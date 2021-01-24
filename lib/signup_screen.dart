import 'package:flutter/material.dart';
import 'package:joshaba/app.dart';
import 'package:joshaba/login_screen.dart';
import 'package:joshaba/screen/home_screen.dart';
import 'bcommerce/src/Constant/Constant.dart';
import 'model/validation_mixin.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();
  bool _autoValidate = true;
  bool _hidePassword = true;

  Widget emailInputField() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
            autofocus: true,
            onSaved: (String value){
              print(value);
            },
            validator: emailValidationMixin,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
              hintText: 'you@example.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            )));
  }

  Widget passwordInputField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
          obscureText: _hidePassword,
          onSaved: (String value){
              print(value);
            },
          validator: passwordValidationMixin,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _hidePassword = !_hidePassword;
                });
              },
              child: Icon(Icons.remove_red_eye),
            ),
            prefixIcon: Icon(Icons.vpn_key),
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget submitButton() {
    return Container(
      width: 250,
      height: 50,
      //padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {
          if(formKey.currentState.validate()){
            formKey.currentState.save();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
            //Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
          }

        },
        child: Text("Sign Up"),
        splashColor: Colors.green,
        color: Colors.blue,
        colorBrightness: Brightness.dark,
      ),
    );
  }

  Widget signupButton() {
    return Container(
      width: 250,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return App();
              },
            ),
          );
          if(formKey.currentState.validate()){
            formKey.currentState.save();

          }
        },
        child: Text("Already have an account? Login"),
        splashColor: Colors.blue,
        color: Colors.green,
        colorBrightness: Brightness.dark,
      ),
    );
  }


  Widget forgotPassword(){
    return Container(
      child: FlatButton(
        onPressed: (){
          //forgot password screen
        },
        textColor: Colors.blue,
        child: Text('Forgot Password'),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            emailInputField(),
            passwordInputField(),
            SizedBox(height:30),
            submitButton(),
            SizedBox(height: 30),
            _divider(),
            SizedBox(height: 30),
            signupButton(),
            SizedBox(height: 10),
            //forgotPassword(),
          ],
        ),
      ),
    );
  }
}
