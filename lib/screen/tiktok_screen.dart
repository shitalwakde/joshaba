import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joshaba/screen/pages/add_video_page.dart';
import 'package:joshaba/screen/pages/discover_page.dart';
import 'package:joshaba/screen/pages/home_page.dart';
import 'package:joshaba/screen/pages/inbox_page.dart';
import 'package:joshaba/screen/pages/me_page.dart';
import 'package:joshaba/screen/pages/profile_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TikTokScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TikTokScreen> {

  int _pageController=0;

  List<Widget> _pages=[TikTokPage(),ProfilePage(),InboxPage(),MePage()];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          body: _pages[_pageController],
          
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: Colors.black,
            height: sizingInformation.localWidgetSize.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=0;
                    });
                  },
                  child: _navBarItem(
                    title: "Home",
                    icon: Icons.home,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=1;
                    });
                  },
                  child: _navBarItem(
                    title: "Discover",
                    icon: Icons.search,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => AddVideoPage()
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 50,
                    height: sizingInformation.localWidgetSize.height * 0.07,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 20,
                            height: sizingInformation.localWidgetSize.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.blue
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 20,
                            height: sizingInformation.localWidgetSize.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.red
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 40,
                            height: sizingInformation.localWidgetSize.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.white
                            ),
                            child: Icon(Icons.add,color: Colors.black,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=2;
                    });
                  },
                  child: _navBarItem(
                    title: "Inbox",
                    icon: Icons.message,
                  ),
                ),
                /*InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=3;
                    });
                  },
                  child: _navBarItem(
                    title: "Me",
                    icon: Icons.person,
                  ),
                ),*/
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _navBarItem({String title,IconData icon}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,color: Colors.white),
        Text(title, style: TextStyle(color: Colors.white),)
      ],
    );
  }
}
