import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/views/movie/component/my_colors.dart';
import 'package:movie_app/views/movie/movie_view.dart';

import 'component/myTypography.dart';
import 'component/my_button.dart';

enum AuthMode { Regis, Login }

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  AuthMode _authMode = AuthMode.Login;
  var obscureText = true;
  final _passwordController = TextEditingController();
  var _isLoading = false;

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Regis;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background2.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                              _authMode == AuthMode.Login
                                  ? 'LOGIN'
                                  : 'REGISTER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade100))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade100))),
                              child: TextFormField(
                                obscureText: obscureText,
                                controller: _passwordController,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 5) {
                                    return 'Password is too short!';
                                  }
                                },
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: (() {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      }),
                                      child: obscureText
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off),
                                    ),
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            if (_authMode == AuthMode.Regis)
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  enabled: _authMode == AuthMode.Regis,
                                  obscureText: obscureText,
                                  decoration: InputDecoration(
                                      suffixIcon: GestureDetector(
                                        onTap: (() {
                                          setState(() {
                                            obscureText = !obscureText;
                                          });
                                        }),
                                        child: obscureText
                                            ? Icon(Icons.visibility)
                                            : Icon(Icons.visibility_off),
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Confirm Password",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                  validator: _authMode == AuthMode.Regis
                                      ? (value) {
                                          if (value !=
                                              _passwordController.text) {
                                            return 'Passwords do not match!';
                                          }
                                        }
                                      : null,
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: MyButton(
                          onTap: () {
                            // context.read<AuthCubit>().Login(LoginBody(
                            //     email: 'Developer5@gmail.com',
                            //     password: '13456'));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieWrapperRoute(),
                                ));
                          },
                          color: MyColors.darkPurple2,
                          centerText: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child:
                                  //  (state is AuthLoading)
                                  //     ? CircularProgressIndicator()
                                  //     :
                                  Text(
                                _authMode == AuthMode.Login
                                    ? 'LOGIN'
                                    : 'SIGNUP',
                                style: MyTypography.textMedium,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account yet?'),
                            GestureDetector(
                              onTap: _switchAuthMode,
                              child: Text(
                                _authMode == AuthMode.Login
                                    ? 'Login'
                                    : 'Register',
                                style: MyTypography.textSmall.copyWith(
                                  color: MyColors.darkPurple2,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
