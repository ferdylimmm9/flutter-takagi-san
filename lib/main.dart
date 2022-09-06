import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Characters.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The Dog",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ListViewPage()));
        },
        done: Text(
          "Baca",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Oxygen"),
        ),
        pages: [
          PageViewModel(
              title: "Welcome",
              bodyWidget: Image(
                image: NetworkImage(ImageArray[0]),
                fit: BoxFit.cover,
                width: 300,
                height: 300,
              ),
              footer: Text(
                "Teasing Master\nTakagi-san",
                style: TextStyle(
                    fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          PageViewModel(
            title: "Synopsis",
            bodyWidget: Container(
              child: Text(
                "\"If you blush, you lose.\" Living by this principle, the middle schooler Nishikata gets constantly made fun of by his seat neighbor Takagi-san. With his pride shattered to pieces, he vows to turn the tables and get back at her some day. And so, he attempts to tease her day after day, only to find himself victim to Takagi-san's ridicule again sooner than later. Will he be able to make Takagi-san blush from embarrassment even once in the end?",
                style: TextStyle(
                    fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              width: 300,
              height: 200,
            ),
            footer: Image(
              image: NetworkImage(ImageArray[1]),
              fit: BoxFit.cover,
              width: 400,
              height: 200,
            ),
          ),
          PageViewModel(
              title: "Character Portal",
              bodyWidget: Image(
                image: NetworkImage(ImageArray[2]),
                fit: BoxFit.cover,
                width: 300,
                height: 300,
              ),
              footer: Text(
                "find and know you characters",
                style: TextStyle(
                    fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
        ],
        next: Icon(Icons.navigate_next),
        skip: Text(
          "Skip",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Oxygen"),
        ),
        showSkipButton: true,
      ),
    );
  }
}

final List<String> ImageArray = [
  "https://takagi3.me/assets/img/top/mv.jpg",
  "https://s0.smartresize.com/wallpaper/53/699/HD-wallpaper-anime-karakai-jouzu-no-takagi-san-nishikata-karakai-jouzu-no-takagi-san-takagi-karakai.jpg",
  "https://i.ytimg.com/vi/YhQ8OxLGVOY/maxresdefault.jpg"
];

class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  List<Character> dummydata = listData;

  void filtering(String value) {
    List<Character> data = [];
    if (value.isEmpty) {
      setState(() {
        dummydata.clear();
        dummydata.addAll(listData);
      });
    } else {
      listData.forEach((element) {
        if (element.name.toLowerCase().contains(value.toLowerCase())) {
          data.add(element);
        }
        ;
      });
      setState(() {
        dummydata = data;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (String value) {
                setState(() {
                  filtering(value);
                });
              },
              autofocus: true,
              maxLines: 1,
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Cari Karaktermu",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraint) {
                if (constraint.maxWidth <= 600) {
                  return GridData(count: 2, dummydata: dummydata);
                } else if (constraint.maxWidth <= 1200) {
                  return GridData(count: 3, dummydata: dummydata);
                } else {
                  return GridData(count: 5, dummydata: dummydata);
                }
              },
            ))
          ],
        ),
      ),
    ));
  }
}

class GridData extends StatelessWidget {
  final int count;
  final List<Character> dummydata;
  GridData({required this.count, required this.dummydata});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: count,
      children: dummydata
          .map((e) => InkWell(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: NetworkImage(e.circle),
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "${e.name}",
                        style: TextStyle(fontFamily: "Oxygen"),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsData(data: e)));
                },
              ))
          .toList(),
    );
  }
}

class DetailsData extends StatelessWidget {
  final Character data;
  DetailsData({required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kembali"),
      ),
      body: SafeArea(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          if (constraint.maxWidth <= 658) {
            return MobileView(data: data);
          } else {
            return WebView(data: data);
          }
        },
      )),
    );
  }
}

class MobileView extends StatelessWidget {
  final Character data;
  MobileView({required this.data});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "${data.name} | ${data.kanji}",
            style: TextStyle(
                fontFamily: "Oxygen",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Image(
            image: NetworkImage(data.profile),
            width: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Personal Data",
            style: TextStyle(
                fontFamily: "Oxygen",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          Container(
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: AlignmentDirectional.center,
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(children: [
                  Text(
                    "Name",
                    style: TextStyle(
                        fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${data.name} | ${data.kanji}",
                    style: TextStyle(fontFamily: "Oxygen"),
                  )
                ]),
                TableRow(children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                        fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${data.gender}",
                    style: TextStyle(fontFamily: "Oxygen"),
                  )
                ]),
                TableRow(children: [
                  Text(
                    "Hair Color",
                    style: TextStyle(
                        fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${data.hair}",
                    style: TextStyle(fontFamily: "Oxygen"),
                  )
                ]),
                TableRow(children: [
                  Text(
                    "Eyes Color",
                    style: TextStyle(
                        fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${data.eye}",
                    style: TextStyle(fontFamily: "Oxygen"),
                  )
                ]),
                TableRow(children: [
                  Text(
                    "Character Voice",
                    style: TextStyle(
                        fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${data.voice}",
                    style: TextStyle(fontFamily: "Oxygen"),
                  )
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Detail",
            style: TextStyle(
                fontFamily: "Oxygen",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("${data.detail}",
                style: TextStyle(fontFamily: "Oxygen", fontSize: 12),
                textAlign: TextAlign.justify),
          ),
          Text(
            "Appearence",
            style: TextStyle(
                fontFamily: "Oxygen",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("${data.app}",
                style: TextStyle(fontFamily: "Oxygen", fontSize: 12),
                textAlign: TextAlign.justify),
          ),
          Text(
            "Character Design",
            style: TextStyle(
                fontFamily: "Oxygen",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          CarouselSlider.builder(
              itemCount: data.list.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return InkWell(
                  child: Card(
                      child: Container(
                    child: Image(
                      image: NetworkImage(data.list[itemIndex]),
                      width: 400,
                      fit: BoxFit.contain,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 1),
                  )),
                  onTap: () {
                    showDialog(
                        builder: (context) => AlertDialog(
                              insetPadding: EdgeInsets.all(5.0),
                              contentPadding: EdgeInsets.all(5.0),
                              content: Image(
                                image: NetworkImage(data.list[itemIndex]),
                                fit: BoxFit.cover,
                              ),
                            ),
                        context: context);
                  },
                );
              },
              options:
                  CarouselOptions(autoPlay: true, enableInfiniteScroll: false)),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}

class WebView extends StatelessWidget {
  final Character data;
  WebView({required this.data});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${data.name} | ${data.kanji}",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: NetworkImage(data.profile),
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Personal Data",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical:10,horizontal: 80),
                    alignment: AlignmentDirectional.center,
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${data.name} | ${data.kanji}",
                            style: TextStyle(fontFamily: "Oxygen"),
                          )
                        ]),
                        TableRow(children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                                fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${data.gender}",
                            style: TextStyle(fontFamily: "Oxygen"),
                          )
                        ]),
                        TableRow(children: [
                          Text(
                            "Hair Color",
                            style: TextStyle(
                                fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${data.hair}",
                            style: TextStyle(fontFamily: "Oxygen"),
                          )
                        ]),
                        TableRow(children: [
                          Text(
                            "Eyes Color",
                            style: TextStyle(
                                fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${data.eye}",
                            style: TextStyle(fontFamily: "Oxygen"),
                          )
                        ]),
                        TableRow(children: [
                          Text(
                            "Voice Actor",
                            style: TextStyle(
                                fontFamily: "Oxygen", fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${data.voice}",
                            style: TextStyle(fontFamily: "Oxygen"),
                          )
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),


                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text(
                    "Detail",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("${data.detail}",
                        style: TextStyle(fontFamily: "Oxygen", fontSize: 12),
                        textAlign: TextAlign.justify),
                  ),
                  Text(
                    "Appearence",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("${data.app}",
                        style: TextStyle(fontFamily: "Oxygen", fontSize: 12),
                        textAlign: TextAlign.justify),
                  ),
                  Text(
                    "Character Design",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  CarouselSlider.builder(
                    itemCount: data.list.length,
                    itemBuilder:
                        (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Container(
                        margin: EdgeInsets.all(20),
                        width: 300,
                        height: 300,
                        child: InkWell(
                          child: Card(
                            child: Image(
                              image: NetworkImage(data.list[itemIndex]),
                              fit: BoxFit.scaleDown,
                              width: 300,
                              height: 300,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 1),
                          ),
                          onTap: () {
                            showDialog(
                                builder: (context) => AlertDialog(
                                  insetPadding: EdgeInsets.all(5.0),
                                  contentPadding: EdgeInsets.all(5.0),
                                  content: Image(
                                    image: NetworkImage(data.list[itemIndex]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                context: context);
                          },
                        ),
                      );
                    },
                    options:
                    CarouselOptions(autoPlay: true, enableInfiniteScroll: false,height: 300,),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
