import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:progect4/project.dart';
class firebase extends StatefulWidget {
  const firebase({Key? key}) : super(key: key);

  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  Future<String?> login
      ({
    required String email,
    required String password,
  })
  async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller:email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ) ,
                    )
                ),
                SizedBox(
                  height: 30,
                ),

                TextField(
                  controller: password,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ) ,
                    )
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue), onPressed: (){Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=> project()));},
                    child: Text('button',style:TextStyle(color: Colors.black),)),
              ],
            )
        )
    );
  }
}

