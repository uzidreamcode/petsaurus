import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:petsaurus/core/constants/colors.dart';
import 'package:petsaurus/core/router/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    // Cek status autentikasi pengguna

    // Tunggu sebentar dan arahkan ke halaman yang tepat
    await Future.delayed(const Duration(seconds: 2));

    // Jika sudah login, arahkan ke halaman utama; jika belum login, arahkan ke halaman login
    // if (!isAuth) {
    //   context.pushNamed(
    //     RouteConstants.login,
    //   );
    // } else {
    //   context.goNamed(
    //     RouteConstants.root,
    //     pathParameters: PathParameters(
    //       rootTab: RootTab.home,
    //     ).toMap(),
    //   );
    // }

    // context.goNamed(
    //   RouteConstants.root,
    //   pathParameters: PathParameters(
    //     rootTab: RootTab.home,
    //   ).toMap(),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/splash.json', width: 200, height: 200),
          Text(
            'Petsaurus',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
