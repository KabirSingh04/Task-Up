import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Myinformationscreen extends StatelessWidget {
  var defaultText = TextStyle(
    color: Colors.black,
    fontSize: 23.0,
  );
  var link = TextStyle(color: Colors.blue,
    fontSize: 23.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/images/mypic.png'),
            Center(
                child: RichText(
              text: TextSpan(children: [
                TextSpan(style: defaultText, text: ("Built with ♥ By ")),
                TextSpan(
                    style: link,
                    text: "Kabir Singh",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        var url = "https://www.linkedin.com/in/kabirsinghtech/";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw " Cannot Load Url";
                        }
                      })
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
