
import 'package:flutter/material.dart';


class LoginWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 244, 244),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                height: 661,
                child: Image.asset(
                  "assets/images/path-2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: -430,
              top: -558,
              right: -220,
              child: Container(
                height: 1558,
                child: Image.asset(
                  "assets/images/mask-group-1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 110,
              bottom: 9,
              child: Container(
                width: 312,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 83),
                        child: Text(
                          "Jfin Wallet",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 31,
                            fontFamily: "Roboto",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 65,
                        height: 57,
                        margin: EdgeInsets.only(top: 85),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(41, 0, 0, 0),
                              offset: Offset(0, 3),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/path-187.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 256,
                        margin: EdgeInsets.only(top: 84),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14,
                            fontFamily: ".SF NS Text",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 37,
                        height: 6,
                        margin: EdgeInsets.only(top: 71),
                        child: Image.asset(
                          "assets/images/group-1.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 312,
                        height: 162,
                        margin: EdgeInsets.only(bottom: 72),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              offset: Offset(0, 3),
                              blurRadius: 50,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 134,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),
                        child: Container(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 108,
              child: Container(
                width: 275,
                height: 117,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 275,
                        height: 49,
                        margin: EdgeInsets.only(bottom: 19),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            color: Color.fromARGB(255, 229, 229, 229),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(24.5)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 45),
                              child: Text(
                                "เบอร์โทรศัพท์ (Mobile Numb",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 167, 167, 167),
                                  fontSize: 14,
                                  fontFamily: ".SF NS Text",
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 275,
                        height: 49,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.042, 0.064),
                            end: Alignment(0.959, 1),
                            stops: [
                              0,
                              1,
                            ],
                            colors: [
                              Color.fromARGB(255, 203, 45, 62),
                              Color.fromARGB(255, 239, 71, 58),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(77, 239, 71, 58),
                              offset: Offset(0, 6),
                              blurRadius: 10,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(24.5)),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              child: Text(
                                "ถัดไ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 14,
                                  fontFamily: ".SF NS Text",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                              right: 18,
                              child: Container(
                                width: 12,
                                height: 9,
                                child: Image.asset(
                                  "assets/images/path-240.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}