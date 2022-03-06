import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: FlowerApp(),
  ));
}

class FlowerApp extends StatefulWidget {
  const FlowerApp({Key? key}) : super(key: key);

  @override
  _FlowerAppState createState() => _FlowerAppState();
}

class _FlowerAppState extends State<FlowerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 244, 255, 1),
      //-----------
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(255, 244, 255, 1),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment_rounded,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.all_inclusive,
                color: Colors.black,
              ),
              label: '',
            ),
          ],
        ),
      ),
      //-----------------
      body: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Красоты \nприроды',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Comfortaa',
                          fontSize: 36,
                          letterSpacing: -1.5,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Chip(
                          label: Text(
                            "ВСЕ ЦВЕТЫ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          backgroundColor: Color.fromRGBO(66, 45, 138, 1),
                          padding: EdgeInsets.only(left: 12, right: 12),
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Chip(
                          label: Text(
                            "РОЗЫ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Color.fromRGBO(66, 45, 138, 70),
                          padding: EdgeInsets.only(left: 12, right: 12),
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Chip(
                          label: Text(
                            "РОМАШКИ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Color.fromRGBO(66, 45, 138, 70),
                          padding: EdgeInsets.only(left: 12, right: 12),
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Chip(
                          label: Text(
                            "КОЛОКОЛЬЧИКИ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Color.fromRGBO(66, 45, 138, 70),
                          padding: EdgeInsets.only(left: 12, right: 12),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      ' Популярное за сегодня🖤',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              SizedBox(height: 2),
              Container(
                width: double.infinity,
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard(
                          "@azat_grlv", '24354', "lib/assets/images/2.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard("@challenge_course", '24354',
                          "lib/assets/images/3.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard(
                          "@koraevgeorge", '24354', "lib/assets/images/4.jpeg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard(
                          "flowerName", '24354', "lib/assets/images/5.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard(
                          "flowerName", '24354', "lib/assets/images/6.jpg"),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      ' Популярное за неделю🖤',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard(
                          "@azat_grlv", '64354', "lib/assets/images/7.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard(
                          "@koraevgeorge", '64354', "lib/assets/images/8.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FlowerCard("@challenge_course", '64354',
                          "lib/assets/images/9.jpg"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }

  Widget FlowerCard(String floweName, String likes, String imgPath) {
    return InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
                elevation: 0.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    width: 125,
                    height: 125,
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              ' ' + likes + '❤',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              (' ' + floweName),
              style: TextStyle(color: Colors.black, fontSize: 14),
            )
          ],
        ));
  }
  //final cropKey = GlobalKey<CropState>();

// Widget _buildCropImage() {
//   return Container(
//       color: Colors.black,
//       padding: const EdgeInsets.all(20.0),
//       child: Crop(
//         //key: cropKey,
//         image: Image.file(imgPath),
//         aspectRatio: 4.0 / 3.0,
//       ),
//   );
// }
}
