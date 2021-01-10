import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joshaba/screen/bcommerce_screen.dart';
import 'package:joshaba/screen/pages/me_page.dart';
import 'package:joshaba/screen/tiktok_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'facebook_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _pageController=0;

  List<Widget> _pages=[FacebookPage(),TikTokScreen(),BcommerceScreen(),MePage()];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: Colors.blue,
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
                    title: "Bhimbook",
                    icon: Icons.collections_bookmark,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=1;
                    });
                  },
                  child: _navBarItem(
                    title: "BhimTok",
                    icon: Icons.music_note,
                  ),
                ),
                /*InkWell(
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
                ),*/
                InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=2;
                    });
                  },
                  child: _navBarItem(
                    title: "Bhimkart",
                    icon: Icons.shopping_basket,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _pageController=3;
                    });
                  },
                  child: _navBarItem(
                    title: "Profile",
                    icon: Icons.person,
                  ),
                ),
              ],
            ),
          ),
          body: _pages[_pageController],
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
