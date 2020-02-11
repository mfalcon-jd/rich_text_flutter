import 'package:flutter/material.dart';
import 'package:css_text/css_text.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String htmlContent = """
<body>
<p style="font-size:1.5em;">
Hello <b style="font-style:italic;color:#bb0000;background-color:#eeff00">World</b>!!
<br/>
How are you <span style="font-family:RobotoBlack;color:#ff0000;">today?</span>
<br/>
<b>But</b> why are you doing <a href="https://google.com">this?</a><br/>
<br/>
<span style="text-decoration: underline wavy; font-size:2em">Can you tell <del>me</del>?</span>
<br/>
Please visit <a style="font-weight:bold;" href="https://docs.flutter.io">Flutter docs</a>
<br/>
<br/>
<span style="color:#990000ff;background:#4400ff00">
This text is slightly transparent, and has a slightly transparent background too.
</span>
</p>
</body>
""";

    var myRichText = HTML.toRichText(context, htmlContent, linksCallback: (link) {
        print("You clicked on $link");
    });

    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text("Demo")),
      body: Container(padding:EdgeInsets.all(16.0), child:myRichText)
    ));
  }
}
