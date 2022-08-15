import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:io';

class ResourcesMobile extends StatefulWidget {
  const ResourcesMobile({Key? key}) : super(key: key);

  @override
  State<ResourcesMobile> createState() => _ResourcesMobileState();
}

class _ResourcesMobileState extends State<ResourcesMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: ListView(children: [
          SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _pdfViewButton("X-MUN '22 Conference Handbook", "logo",
                "https://drive.google.com/file/d/1rM9PXf7V4K5bc6-NW39OvDud0YwS6IlY/view?usp=sharing"),
            SizedBox(height: 0.3 * MediaQuery.of(context).size.height),
            _pdfViewButton("X-MUN '22 Schedule", 'logo',
                'https://drive.google.com/file/d/18enIagz4qCXEnaqwk5aZzhHSbryV-QBD/view?usp=sharing'),
            SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
            Text(
              "Study Guides",
              style: TextStyle(
                  fontFamily: "heading",
                  color: Colors.white,
                  fontSize: 0.08 * MediaQuery.of(context).size.height),
            ),
            SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
            _pdfViewButton(
                "Joint-Security Talks of the National Socialists German Workers\' Party and Union of Soviet Socialist Republics",
                "Hitler-Stalin Cabinet",
                "https://drive.google.com/file/d/17cUQJBfdCQVap4GES-YUD1CL6-ePmwQJ/view?usp=sharing"),
            SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
            _pdfViewButton(
                "Closed Sessions of The House of Representatives of The USA",
                "House of Representatives",
                "https://drive.google.com/file/d/11dIEjhEawaYewi6k7qHYoxmHeyYNISrm/view?usp=sharing"),
            SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
            _pdfViewButton(
                "Second All Parties Conference, India, 1939",
                "Indian Committee",
                "https://drive.google.com/file/d/1KtxOuESf8s9Tv4MxG5LbLj7NPbQdBiSl/view?usp=sharing"),
            SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
            _pdfViewButton(
                "United Nations Security Council",
                "United Nations Security Council",
                "https://drive.google.com/file/d/1KkaBvT6dSzD9e-Zixc45BbHbuossMOfT/view?usp=sharing"),
            SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
            Text(
              "Registrations",
              style: TextStyle(
                  fontFamily: "heading",
                  color: Colors.white,
                  fontSize: 0.08 * MediaQuery.of(context).size.height),
            ),
            SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
            _formViewButton("Individual Registrations",
                "https://docs.google.com/forms/d/e/1FAIpQLSe1bWCo9qzn41lr9yPsgjg6mlRjS008slSuGcybK3gq-qbu1w/viewform?usp=sf_link"),
            SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
          ]),
        ]),
      ),
    );
  }

  Widget _formViewButton(String display, String path) {
    return Container(
        height: 0.15 * MediaQuery.of(context).size.height,
        width: 0.6 * MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffff6961),
        ),
        child: FlatButton(
            onPressed: () {
              final url = path;
              html.window.open(url, display);
            },
            child: Container(
              width: 0.3 * MediaQuery.of(context).size.height,
              child: Text(
                display,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "body",
                    color: Colors.white,
                    fontSize: 0.027 * MediaQuery.of(context).size.height),
              ),
            )));
  }

  Widget _pdfViewButton(String display, String image, String url) {
    return Container(
        height: 0.15 * MediaQuery.of(context).size.height,
        width: 0.6 * MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffff6961),
        ),
        child: FlatButton(
          onPressed: () {
            html.window.open(url, display);
          },
          child: SizedBox(
            height: 0.13 * MediaQuery.of(context).size.height,
            width: 0.58 * MediaQuery.of(context).size.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('themes/' + image + ".png", fit: BoxFit.cover),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 0.42 * MediaQuery.of(context).size.width,
                        child: Text(display,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontFamily: "body")),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
