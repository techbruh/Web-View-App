import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:broaddrive/pages/webview.dart';


class BdriveSplash extends StatefulWidget {
  const BdriveSplash({Key? key}) : super(key: key);

  @override
  State<BdriveSplash> createState() => _BdriveSplashState();
}

class _BdriveSplashState extends State<BdriveSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => (BdriveApp())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Padding(padding: EdgeInsets.all(50),
              child: Image(image: AssetImage('assets/images/bdimage.png'),
                width: 300,
              ),
            ),

            SizedBox(height: 5,
            ),
            SizedBox(height: 70,
            ),
            SpinKitWave(
              color: Colors.blue[900],
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}
