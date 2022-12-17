import 'package:data_base/qr_scan.dart';
import 'package:data_base/web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Get_started extends StatelessWidget {
  var netamt = 5000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            height: 950,
            width: 500,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Harsh',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Welcome Back',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(width: 170),
                      Container(
                        height: 60,
                        width: 60,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black),
                        child: Image.asset(
                          'assets/splash/bank2.jpg',
                          /*height: 80,
                          width: 100,*/
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade500),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey.shade900,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Container(
                              height: 65,
                              width: 65,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.document_scanner_outlined,
                                color: Colors.grey.shade700,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 145,
                        width: 270,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.pink, Colors.white])),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Number',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '0364 8970',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text('Harsh Vyas',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text('Exp. 06/23',
                                      style: TextStyle(color: Colors.pink)),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  Stack(children: [
                    Container(
                      /*
                      color: Colors.white,*/
                      width: 200,
                      height: 100,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: '5000',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(
                                  Icons.currency_bitcoin,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 140),
                      child: Container(
                        color: Colors.black,
                        width: 90,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Total \namount',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Transaction',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 200),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                begin: Alignment.topLeft,
                                colors: [Colors.pink, Colors.white]),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.abc,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Amazon Prime',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '26.7.2022 12:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 125),
                      Text(
                        '-250 rs',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                begin: Alignment.topLeft,
                                colors: [Colors.blue, Colors.white]),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.baby_changing_station_sharp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UI/UX Course',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '11.11.2022 1:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 125),
                      Text(
                        '-20050 rs',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                begin: Alignment.topLeft,
                                colors: [Colors.green, Colors.white]),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.abc,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apple Pay',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '10.12.2022 2:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 125),
                      Text(
                        '-2000 rs',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                begin: Alignment.topLeft,
                                colors: [Colors.black, Colors.white]),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.golf_course_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Golf',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '13.11.2022 5:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 125),
                      Text(
                        '-250 rs',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                begin: Alignment.topLeft,
                                colors: [Colors.black, Colors.white]),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.golf_course_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Golf',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '13.11.2022 5:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 125),
                      Text(
                        '-600 rs',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                begin: Alignment.topLeft,
                                colors: [Colors.black, Colors.white]),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.golf_course_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Golf',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '13.11.2022 5:00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 125),
                      Text(
                        '-250 rs',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 775),
          child: Container(
            height: 70,
            width: 500,
            color: Colors.white10,
            child: Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.home,
                  color: Colors.pink,
                  size: 25,
                ),
                SizedBox(width: 30),
                Icon(
                  Icons.home,
                  color: Colors.pink,
                  size: 25,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
