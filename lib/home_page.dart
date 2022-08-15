import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xmun/CommitteesSelection.dart';
import 'package:xmun/content_view.dart';
import 'package:xmun/custom_tab.dart';
import 'package:xmun/resources.dart';
import 'package:xmun/resources_mobile.dart';
import 'package:xmun/secretariat_mobile.dart';
import 'About.dart';
import 'Secretariat.dart';
import 'custom_tab_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import "dart:html" as html;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  late double screenHeight;
  late double screenWidth;
  late TabController tabController;
  List<ContentView> contentViews = [
    ContentView(tab: CustomTab(title: 'About'), content: About()),
    ContentView(
        tab: CustomTab(title: 'Committees'), content: CommitteeSelection()),
    ContentView(tab: CustomTab(title: 'Secretariat'), content: Secretariat()),
    ContentView(
        tab: CustomTab(title: 'Resources'), content: Resources()),
  ];

  List<ContentView> contentViewsMobile = [
    ContentView(tab: CustomTab(title: 'About'), content: About()),
    ContentView(
        tab: CustomTab(title: 'Committees'), content: CommitteeSelection()),
    ContentView(
        tab: CustomTab(title: 'Secretariat'), content: SecretariatMobile()),
    ContentView(
        tab: CustomTab(title: 'Resources'), content: ResourcesMobile()),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    bool e = true;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => launch("mailto:xmun2022@gmail.com"),
              icon: Icon(
                Icons.mail_outline,
                color: Colors.black,
                size: 0.8 * kToolbarHeight,
              )),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 0.8 * kToolbarHeight,
            width: 0.8 * kToolbarHeight,
            child: FlatButton(
              onPressed: () {
                final url = "https://instagram.com/xmun.2022/";
                html.window.open(url, "Instagram");
              },
              child: Image.asset(
                "themes/Instagram.png",
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
        excludeHeaderSemantics: true,
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        toolbarHeight: kToolbarHeight + 42,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              height: 0,
              child: Image.asset(
                'themes/logo.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              onPressed: () {
                if (MediaQuery.of(context).size.width > 715)
                  tabController.index = 0;
              },
            ),
            Container(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  'X-MUN 22',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black, fontFamily: "heading"),
                ))
          ],
        ),
        elevation: 0.0,
      ),
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return desktopView();
        } else {
          return mobileView();
        }
      }),
    );
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contentViews.map((e) => e.tab).toList(),
        ),
        Container(
          height: screenHeight * 0.85,
          child: TabBarView(
              controller: tabController,
              children: contentViews.map((e) => e.content).toList()),
        ),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contentViewsMobile.map((e) => e.tab).toList(),
        ),
        Container(
          height: screenHeight * 0.85,
          child: TabBarView(
              controller: tabController,
              children: contentViewsMobile.map((e) => e.content).toList()),
        ),
      ],
    );
  }
}
