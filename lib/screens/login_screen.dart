import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_flutter/utils/colors.dart';
import 'package:instagram_flutter/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                height: 64,
                color: primaryColor,
              ),
              const SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  textEditingController: _emailController,
                  hintText: 'Enter your email',
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                textEditingController: _passwordController,
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: blueColor),
              ),
              const Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Don't have a account? ",
                    ),
                    WidgetSpan(
                        child: InkWell(
                      onTap: () {},
                      child: const Text('Sign up',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
