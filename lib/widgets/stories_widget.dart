import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joshaba/tabs/watch_tab.dart';

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 15.0),
        Container(
          child: Stack(
            children: <Widget>[
              ClipRRect(
                // child: Image.network(myStoryImage, fit: BoxFit.fill),
                child: Image.asset('assets/story1.jpg', fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              Positioned(
                  child: FloatingActionButton(
                    heroTag: "Addasdfdsfdsf",
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      color: Colors.blue,
                      size: 30,
                    ),
                    //onPressed: () {}
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WatchTab();
                          },
                        ),
                      );
                      /*print('pressed');
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => UserStory(
                                  storyController: widget.storyController)));*/
                    },
                  ),
                  left: 10,
                  top: 5,
                  height: 40,
                  width: 40),
              Positioned(
                  child:
                  Text('Add to Story', style: TextStyle(color: Colors.white)),
                  top: 150,
                  left: 10)
            ],
            fit: StackFit.expand,
          ),
          margin: EdgeInsets.only(right: 10),
          // height: 220,
          width: 120,
          // decoration: BoxDecoration(color: Colors.white),
          // padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        ),
          /*Container(
            width: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage('assets/story1.jpg'), fit: BoxFit.cover)
            ),
          ),*/
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story2.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story3.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story4.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story5.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story6.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story7.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/story8.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}