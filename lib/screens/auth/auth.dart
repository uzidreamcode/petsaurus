import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:petsaurus/core/constants/colors.dart';
import 'package:petsaurus/core/router/app_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login Page',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Lottie.network(
              "https://lottie.host/6ef733b7-8935-44c4-ae02-2f78f8ae6a45/4e4ftK4Pon.json",
              height: 400,
            ),
            Text(
              'Email Address',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10.0),
            TextField(
              // controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'halo@petsaurus.com',
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Password',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20.0),
            TextField(
              // controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '..........',
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
                onPressed: () {
                  context.pushReplacementNamed(
                    RouteConstants.root,
                    pathParameters: PathParameters().toMap(),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
