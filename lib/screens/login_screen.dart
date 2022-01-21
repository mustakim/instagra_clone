import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_flutter/utils/color.dart';
import 'package:instagram_flutter/widgets/text_field_input.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2,),
              // svg image
              SvgPicture.asset(
                'assets/img/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64,),
              // Text field for email
              TextFieldInput(
                textEditingController: _emailController,
                isPass: false,
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress
              ),
              const SizedBox(height: 24),
              // Text field for password
              TextFieldInput(
                textEditingController: _passwordController,
                isPass: true,
                hintText: 'Enter your password',
                textInputType: TextInputType.text
              ),
              const SizedBox(height: 24),
              // Login Button
              InkWell(
                child: Container(
                  child: const Text('Login'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12
                  ),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4)
                      )
                    ),
                    color: blueColor
                  ),
                ),
              ),
              const SizedBox(height: 12.5),
              Flexible(child: Container(), flex: 2,),
              // transition to sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text('Don\'t have an Account?'),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      child: const Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      )
    );
  }
}