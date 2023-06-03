import 'package:flutter/material.dart';
import "styles.dart";

class CraftHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Container(
          child: _bannerImage(
              "https://www.thepencompany.com/blog/wp-content/uploads/fountain-pen-calligraphy-1024x605.jpg"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(25.0, 20.0, 10.0, 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _renderBody(),
          ),
        )
      ],
    )));
  }

  List<Widget> _renderBody() {
    var results = <Widget>[];

    results.add(_sectionTitle("Welcome to Craft!"));
    results.add(_sectionText(
        "Usually you'd see a tagline here - created by a marketing team. Instead, we've asked our users to come up with one."));
    results.add(_sectionText("Here's what they said:"));
          

    return results;
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Text(title, style: Styles.sectionHeading),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      child: Text(
        text,
        style: Styles.sectionContent,
      ),
    );
  }

  Widget _bannerImage(String url) {
    return Container(
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
