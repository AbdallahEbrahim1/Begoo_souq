part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Hero(
          tag: Res.logo,
          child: Image.asset(
            Res.logo,
            width: 200,
            height: 150,
          ),
        ),
        duration: 3000,
        nextScreen: PagesScreen(),
      ),
    );

    // body: Container(
    //   alignment: Alignment.bottomCenter,
    //   color: Colors.white,
    //   child: Center(
    //     child: AnimationContainer(
    //       index: 0,
    //       vertical: true,
    //       duration: Duration(milliseconds: 1500),
    //       distance: MediaQuery.of(context).size.height * .3,
    //       child: Hero(
    //         tag: Res.logo,
    //         child: Image.asset(
    //           Res.logo,
    //           width: 200,
    //           height: 150,
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
  }
}
