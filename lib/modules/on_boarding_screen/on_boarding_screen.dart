import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView(
          children: [
            Column(
              children: [
                Image(
                  image: AssetImage('assets/images/done!.PNG'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text('screen title11111111',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image(
                  image: AssetImage('assets/images/done!.PNG'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text('screen title',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('assets/images/done!.PNG'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text('screen title',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                }, child: const Text("skip")),
              ],
            ),
          ],
        )
      )
    ;
  }
}
