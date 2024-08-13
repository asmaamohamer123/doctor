import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart'; 

Future<File?> pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
    File file = File(result.files.single.path!);
    return file;
  } else {
    // User canceled the picker
    return null;
  }
}
  // To get the file name

Future<void> uploadFile(File file) async {
  try {
    // Create a reference to the location you want to upload the file
    String fileName = basename(file.path);
    Reference storageReference = FirebaseStorage.instance.ref().child('uploads/$fileName');

    // Upload the file to Firebase Storage
    UploadTask uploadTask = storageReference.putFile(file);
    
    // Optionally, you can listen for the upload progress
    uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
      print('Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
    });

    // Wait for the upload to complete
    await uploadTask;

    // Get the download URL
    String downloadURL = await storageReference.getDownloadURL();
    print('File uploaded successfully. Download URL: $downloadURL');
  } catch (e) {
    print('Failed to upload file: $e');
  }
}

 class FileUploadPage extends StatefulWidget {
  @override
  _FileUploadPageState createState() => _FileUploadPageState();
}

class _FileUploadPageState extends State<FileUploadPage> {
  File? _selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(),
      backgroundColor: Colors.white,
     // AppBar(
     //   title: Text('Firebase File Upload'),
      //),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                File? file = await pickFile();
                setState(() {
                  _selectedFile = file;
                });
              },
              child: Text('Pick a file'),
            ),
            SizedBox(height: 20),
            _selectedFile != null
                ? Column(
                    children: [
                      Text('File selected: ${_selectedFile!.path}'),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () async {
                          if (_selectedFile != null) {
                            await uploadFile(_selectedFile!);
                          }
                        },
                        child: Text('Upload'),
                      ),
                    ],
                  )
                : Text(''),
          ],
        ),
      ),
    );
  }
}
