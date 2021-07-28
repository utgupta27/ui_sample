import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int thisindex = 0;
  void onItemTapped(int index){
    setState(() {
      thisindex = index;
    });
  }
  int _currentIndex = 0;

  List cardList = [Item(), Item3(), Item(), Item3()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        title: Text("My Admissions"),
        elevation: 5,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_sharp),
        ),
      ),
      body: Container(
        child: ListView(
          children: [Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            color: Colors.blueAccent,
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 6,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("My Admissions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.blue)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("University admission or college admission is the process through which students enter tertiary education at universities and colleges. ",
                            style: TextStyle(color: Colors.black,fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Banner(
                          message: "Comming Soon",
                          location: BannerLocation.topStart,
                          layoutDirection: TextDirection.rtl,
                          textDirection: TextDirection.rtl,
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: ListTile(
                              title: Center(
                                child: Text("College Predictor",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 17,
                                ),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 ,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Banner(
                          message: "Comming Soon",
                          location: BannerLocation.topStart,
                          layoutDirection: TextDirection.rtl,
                          textDirection: TextDirection.rtl,
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: ListTile(
                                title: Text("Degree Selector",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 17,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 ,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Banner(
                          message: "Comming Soon",
                          location: BannerLocation.topStart,
                          layoutDirection: TextDirection.rtl,
                          textDirection: TextDirection.rtl,
                          child: Card(

                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: ListTile(
                              title: Center(
                                child: Text("My Coaching",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 17,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Banner(
                          message: "Comming Soon",
                          location: BannerLocation.topStart,
                          layoutDirection: TextDirection.rtl,
                          textDirection: TextDirection.rtl,
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: ListTile(
                                title: Text("Overseas Admission",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Blogs for you",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 18,
                        )),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("View More",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 18,
                        )),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            elevation: 6,
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 190,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          'https://miro.medium.com/max/2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg',
                                          // width: 300,
                                          // height: 180,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("This is the subtitle of the description"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            elevation: 6,
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 190,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          'https://miro.medium.com/max/2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg',
                                          // width: 300,
                                          // height: 180,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("This is the subtitle of the description"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            elevation: 6,
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 190,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          'https://miro.medium.com/max/2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg',
                                          // width: 300,
                                          // height: 180,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("This is the subtitle of the description"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            elevation: 6,
                            child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 190,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          'https://miro.medium.com/max/2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg',
                                          // width: 300,
                                          // height: 180,
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("This is the subtitle of the description"),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 40,),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,size: 40),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.school_outlined,size: 40),label: "Admissions"),
          // BottomNavigationBarItem(icon: Icon(Icons.announcement_outlined),label: "FAQs")
        ],
        currentIndex: thisindex,
        selectedItemColor: Colors.deepPurple,
        onTap: onItemTapped,
        elevation: 6,
    ),
    );
  }
}

class Item extends StatelessWidget {
  // const Item({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset('assets/55964-college-student-jumping.json',fit: BoxFit.fill),
        ],
      ),
    );
  }
}
class Item3 extends StatelessWidget {
  // const Item({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset('assets/62577-teachers-college-summer-summit-animated-logo.json',fit: BoxFit.fill),
        ],
      ),
    );
  }
}
// class Item1 extends StatelessWidget {
//   // const Item({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:
//       BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Lottie.asset('assets/43036-admission-going-on.json',fit: BoxFit.fill),
//         ],
//       ),
//     );
//   }
// }
// class Item2 extends StatelessWidget {
//   // const Item({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:
//       BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Lottie.asset('assets/70571-admissions.json',fit: BoxFit.fill),
//         ],
//       ),
//     );
//   }
// }
