import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../widgets/text_field_input.dart';

class SignUpBody extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController bioController;
  final VoidCallback signUpFunc;

  const SignUpBody({
    Key? key,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
    required this.bioController,
    required this.signUpFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        SvgPicture.asset(
          'assets/ic_instagram.svg',
          height: 64,
          color: primaryColor,
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
          children: [
            const CircleAvatar(
              radius: 64,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1652489997190-f492cfbbdf7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80'),
            ),
            Positioned(
                bottom: 0,
                right: 10,
                child: InkWell(
                  onTap: () {},
                  child: const Icon(Icons.add_a_photo),
                ))
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        TextFieldInput(
            textEditingController: usernameController,
            hintText: 'Enter your username',
            textInputType: TextInputType.text),
        const SizedBox(
          height: 24,
        ),
        TextFieldInput(
            textEditingController: emailController,
            hintText: 'Enter your email',
            textInputType: TextInputType.emailAddress),
        const SizedBox(
          height: 24,
        ),
        TextFieldInput(
          textEditingController: passwordController,
          hintText: 'Enter your password',
          textInputType: TextInputType.text,
          isPass: true,
        ),
        const SizedBox(
          height: 24,
        ),
        TextFieldInput(
            textEditingController: bioController,
            hintText: 'Enter your bio',
            textInputType: TextInputType.text),
        const SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: signUpFunc,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Sign up',
              style: TextStyle(fontSize: 18),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: blueColor),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
