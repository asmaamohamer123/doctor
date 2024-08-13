import 'package:attendance/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:smartboard/screens/home/home_screen.dart';
 


// ignore: camel_case_types
class Register_screen extends StatefulWidget {
  const Register_screen({super.key});

  @override
  State<Register_screen> createState() => _Register_screenState();
}

// ignore: camel_case_types
class _Register_screenState extends State<Register_screen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController studentIDController = TextEditingController();
  final TextEditingController studentGradeLevelController = TextEditingController();
  final TextEditingController studentPhoneNumberController = TextEditingController();

   String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال البريد الإلكتروني';
    }
    final RegExp emailRegExp = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'البريد الإلكتروني غير صالح';
    }
    return null;
  }

   String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال كلمة المرور';
    }
    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    }
    return null;
  }
 String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال الاسم';
    }
    return null;
  }

  String? _validateStudentID(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال رقم القومي';
    }
     if (value.length < 14) {
      return 'يرجي ادخال الرقم صحيح' ;
    }
    return null;
  }
 String? _validatestudentGradeLevel(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال المستوي';
    }
     
    return null;
  }
String? _validatestudentPhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال رقم التليفون';
    }
     if (value.length < 11) {
      return 'يرجي ادخال الرقم صحيح' ;
    }
    return null;
  }

  GlobalKey<FormState> formkey = GlobalKey();

    bool  showpassword=true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
     textDirection: TextDirection.rtl,
        child:  Scaffold(
          backgroundColor: Colors.white,
    //  appBar: AppBar(
      //  backgroundColor: Color.fromARGB(255, 83, 109, 131),
     // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center( 
          child: Form(
            key: formkey,
            child: ListView(
              children:[
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            
                  //Text(
                   // 'تسجيل الدخول',
                    //style: TextStyle(
                      //fontSize: 30.0,
                     // fontWeight: FontWeight.bold,
                   // ),
                 // ),
                 Center(
                        child:
                       SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset('assets/images/splash.png'),
                      ),
                      ),
            
            
                  const SizedBox(
                    height: 10.0,
                  ),
            
               /////name
                    Column(
                      children: [
                        TextFormField(
                         
                        controller: nameController,
                   // keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          // print(value);
                        },
                        onChanged: (String value) {
                          // print(value);
                        },
                        //validator: (value) {
                          ////////////////////erroe
                        //  if (value!.isEmpty) {
                          //  return 'يجب كتابه عنوان البريد الالكترونى';
                         // }
            
                   // },
                        validator: _validateName ,
                  
                        decoration: const InputDecoration(
                          labelText: ' اسم الدكتور',
                          prefixIcon: Icon(
                            Icons.person,
                            //color:  Color.fromARGB(255, 62, 127, 129),
                            color:  Color.fromARGB(255, 88, 91, 99),
                          ),
                          border: 
                        
                          //OutlineInputBorder(),
                           OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                  
                                ),
                              ),
                        ),
                  ),
                      
               ///
                   
                         const SizedBox(
                    height: 15.0,
                  ),
            
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value) {
                      // print(value);
                    },
                    onChanged: (String value) {
                      // print(value);
                    },
                    //validator: (value) {
                      ////////////////////erroe
                    //  if (value!.isEmpty) {
                      //  return 'يجب كتابه عنوان البريد الالكترونى';
                     // }
            
                   // },
                    validator: _validateEmail ,
                  
                    decoration: const InputDecoration(
                      labelText: 'عنوان البريد الالكترونى',
                      prefixIcon: Icon(
                        Icons.email,
                       // color:  Color.fromARGB(255, 13, 73, 194),
                       color:  Color.fromARGB(255, 88, 91, 99),
                      ),
                      border: 
                      //OutlineInputBorder(),
                       OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText:showpassword,
            
                    onFieldSubmitted: (String value) {
                      // print(value);
                    },
                    onChanged: (String value) {
                      // print(value);
                    },
                  //  validator: (value) {
                      /////////////////////////////error
                    ////  if (value!.isEmpty) {
                       // return 'يجب كتابه كلمه المرور';
                      //}
            
                   // },
                   validator: _validatePassword,
                    decoration: InputDecoration(
                      labelText: 'كلمه المرور',
                      prefixIcon: const Icon(
                        Icons.lock,
                       // color:  Color.fromARGB(255, 13, 73, 194),
                        color:  Color.fromARGB(255, 88, 91, 99),
                      ),
                   suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showpassword = !showpassword;
                                 
                              });
                            },
                            icon: showpassword
                                ? const Icon(Icons.visibility_off)
                                : const Icon(
                                    Icons.visibility,
                                  ),
                          ),
                    //  suffixIcon: Icon(
                  //   Icons.remove_red_eye,
                    //  ),
                      border: 
                      //OutlineInputBorder(),
                       const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                     
                      TextFormField(
                    controller: studentIDController,
                   //
                 keyboardType: TextInputType.number,
                    onFieldSubmitted: (String value) {
                      // print(value);
                    },
                    onChanged: (String value) {
                      // print(value);
                    },
                    //validator: (value) {
                      ////////////////////erroe
                    //  if (value!.isEmpty) {
                      //  return 'يجب كتابه عنوان البريد الالكترونى';
                     // }
            
                   // },
                    validator: _validateStudentID,
                  
                    decoration: const InputDecoration(
                      labelText: '     الرقم القومي    ',
                      prefixIcon: Icon(
                        Icons.badge,
                        //color:  Color.fromARGB(255, 13, 73, 194),
                        color:  Color.fromARGB(255, 88, 91, 99),
                      ),
                      border: 
                      //OutlineInputBorder(),
                       OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                    ),
                  ),
               ///
                   
                         const SizedBox(
                    height: 15.0,
                  ),
            
                    
                         const SizedBox(
                    height: 15.0,
                  ),
                  ///
                  ///phone
                   TextFormField(
                    controller: studentPhoneNumberController,
                   // keyboardType: TextInputType.emailAddress,
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (String value) {
                      // print(value);
                    },
                    onChanged: (String value) {
                      // print(value);
                    },
                    //validator: (value) {
                      ////////////////////erroe
                    //  if (value!.isEmpty) {
                      //  return 'يجب كتابه عنوان البريد الالكترونى';
                     // }
            
                   // },
                    validator: _validatestudentPhoneNumber,
                  
                    decoration: const InputDecoration(
                      labelText: '   رقم التليقون    ',
                      
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color:  Color.fromARGB(255, 88, 91, 99),
                      ),
                      border: 
                      //OutlineInputBorder(),
                       OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                    ),
                  ),
               //
              
                   
                         const SizedBox(
                    height: 30.0,
                  ),
                  ///
                  ///
                     
                  Center(
                    child: Container(
                      width: double.infinity,
                       //  width: 55 ,
                      // height: 43,
                       decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xff2e386b),
                          // color:  Color.fromARGB(255, 52, 107, 109),
                          

                          ),
                     // color: Color.fromARGB(255, 83, 109, 131),
                      child: MaterialButton(
                        onPressed: () {
                        if (formkey.currentState!.validate())
                         {
                          formkey.currentState!.save();
                          // print(emailController.text);
                          // print(passwordController.text);

                        var router =  MaterialPageRoute(
                      builder: (BuildContext context) =>const HomeScreens(),
                    );
                    //can back for previos page
                    Navigator.of(context).pushReplacement(router);
                        }
                       

                        },
                        child: const Text(
                          '   انشاء حساب  ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                           ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                   ],
                    ),
                   
                ],
              ),
              ],
            ),

          ),
        ),
      ),
    ),
    );
  }
}
