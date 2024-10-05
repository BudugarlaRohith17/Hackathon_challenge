import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    /*Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });*/
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white24],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/smartfiness.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                
              ),
              const Text("Spot the Signs, Protect lives",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
              const SizedBox(height: 200,),
              const Text('Welcome to mySafeTrack',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
              const SizedBox(height:30,),
              Container(
                width: double.infinity, // or a specific width
                child: const Text(
                  'The Complete Health Monitoring app provides user-friendly real-time tracking of vital health parameters and early sepsis identification for proactive care.',
                  textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic), // Optional: Center the text
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 360, // Adjust width as needed
                height: 45, // Adjust height as needed
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange[500]!),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18, // You can increase the font size as well
                      fontWeight: FontWeight.w600, // Adjust font weight for a bolder look
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
