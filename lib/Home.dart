import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Milkiyat extends StatefulWidget {

//  int _current = 0;
//  List imgList = [
//    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.fabhotels.com%2Fblog%2Fplaces-to-visit-in-karnataka%2F&psig=AOvVaw0txRo-9SdZgGzrHOUuiyOd&ust=1628529540310000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDf7rn3ofICFQAAAAAdAAAAABAD'
//        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.planetware.com%2Findia%2Fbest-places-to-visit-in-india-ind-1-26.htm&psig=AOvVaw0txRo-9SdZgGzrHOUuiyOd&ust=1628529540310000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDf7rn3ofICFQAAAAAdAAAAABAI'
//        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tripsavvy.com%2Fbest-tourist-places-to-visit-in-bangalore-1539206&psig=AOvVaw0txRo-9SdZgGzrHOUuiyOd&ust=1628529540310000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDf7rn3ofICFQAAAAAdAAAAABAO'
//        'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftraveltriangle.com%2Fblog%2Fplaces-to-visit-in-august-in-the-world%2F&psig=AOvVaw0txRo-9SdZgGzrHOUuiyOd&ust=1628529540310000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDf7rn3ofICFQAAAAAdAAAAABAU'
//  ];
//
//  List <DynamicLibrary> map<DynamicLibrary>(List list, Function handler) {
//    List<DynamicLibrary> result = [];
//    for (var i = 0; i < list.length; i++) {
//      result.add(handler(i, list[i]));
//    }
//    return result;
//  }

  @override
  _MilkiyatState createState() => _MilkiyatState();
}

class _MilkiyatState extends State<Milkiyat> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 17,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(Icons.auto_awesome_motion_outlined,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Saved',
              icon: Icon(Icons.location_on,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(Icons.library_books,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        drawer: Drawer(
            child: new ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
              title: Text('Item 1'),
              onTap: () {
                //Do some stuff here
                //Closing programmatically - very less practical use
              }),
        ])),
        body: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 250,
              width: 300,
              child: Stack(
                children: [
                  CarouselSlider(
                      items: [
                        Container(
//                     height: 250,
//                     width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("assets/download.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
//                     height: 50,
//                     width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("assets/download1.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
//                   height: 50,
//                   width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("assets/download2.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
//                   height: 50,
//                   width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("assets/download3.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                      )),
                  Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.menu),
                                  color: Colors.white,
                                  onPressed: () =>
                                      _scaffoldKey.currentState?.openDrawer()),
                              SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                  icon: Icon(Icons.location_on),
                                  color: Colors.white,
                                  onPressed: () =>
                                      _scaffoldKey.currentState?.openDrawer()),
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Text("<select locality>",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                                  color: Colors.white,
                                  onPressed: () =>
                                      _scaffoldKey.currentState?.openDrawer()),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              gradient: LinearGradient(
                                  colors: [Colors.orange, Colors.white],
                                  begin: const FractionalOffset(0.7, 0.0),
                                  end: const FractionalOffset(0.0, 0.6),
                                  stops: [0.0, 0.0],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Locality, Commercial, Flat",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 1),
                                    child: Text("Search",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "FIND PROPERTY",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "POST A PROPERTY",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            CarouselSlider(items: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
//                     height: 250,
//                     width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("assets/download.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
//                     height: 50,
//                     width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("assets/download4.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
//                   height: 50,
//                   width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("assets/download5.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
//                   height: 50,
//                   width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: AssetImage("assets/download6.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ], options: CarouselOptions()),

//        CarouselSlider( options: CarouselOptions(),
//
//          items: imgList.map((imgUrl) {
//            return Builder(
//                builder:(BuildContext context){
//              return Container(
//                width: MediaQuery.of(context).size.width,
//                margin: EdgeInsets.symmetric(horizontal: 10),
//                decoration: BoxDecoration(
//                  color: Colors.green,
//                ),
//                child: Image.network(
//                imgUrl,
//                fit: BoxFit.fill,
//              ),
//            );
//          },
//            );
//          }).toList()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.orange
                  ),
                ),
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange
                  ),
                ),
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange
                  ),
                ),
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange
                  ),
                ),
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "Top Picks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 180,),
                GestureDetector(
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_right_sharp),
                    color: Colors.orange,
                    onPressed: () =>
                        _scaffoldKey.currentState?.openDrawer()),
              ],
            ),
            Container(
              height: 150,
              child: ListView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height:250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("assets/download4.jpg"),
                                fit: BoxFit.cover,
                              )),
                          ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download1.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download2.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download3.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download5.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download6.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 10,
            ),
            SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                GestureDetector(
                  child: Text(
                    "Latest",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 200,),
                GestureDetector(
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_right_sharp),
                    color: Colors.orange,
                    onPressed: () =>
                        _scaffoldKey.currentState?.openDrawer()),
              ],
            ),
            Container(
              height: 150,
              child: ListView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download4.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download1.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download2.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download3.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download5.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/download6.jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Text("₹ 1.40 Crore",
//style: TextStyle(
//fontSize: 20,
//fontWeight: FontWeight.bold,
//),),
////                                IconButton(
////                                  padding: new EdgeInsets.all(0.0),
////                                  color: Colors.black,
////                                  icon: new Icon(Icons.clear, size: 1.0),
////                                  onPressed: null,
////                                )
//],
//)