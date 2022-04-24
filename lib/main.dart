import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'numpuzz.dart';

void main() {
  runApp(MaterialApp(
    home: numpuzz(),
  ));
}

class tictac extends StatefulWidget {
  const tictac({Key? key}) : super(key: key);

  @override
  _tictacState createState() => _tictacState();
}



class _tictacState extends State<tictac> {
  List ll=List.filled(9, "");
  int cnt=0;
  String win="";
  void winn() {
    setState(() {
      if (ll[0] == "X" && ll[1] == "X" && ll[2] == "X" ||
          ll[0] == "X" && ll[3] == "X" && ll[6] =="X" ||
          ll[0] == "X" && ll[4] == "X" && ll[8] =="X" ||
          ll[1] == "X" && ll[4] == "X" && ll[7] =="X" ||
          ll[2] == "X" && ll[5] == "X" && ll[8] =="X" ||
          ll[2] == "X" && ll[4] == "X" && ll[6] =="X" ||
          ll[3] == "X" && ll[4] == "X" && ll[5] =="X" ||
          ll[6] == "X" && ll[7] == "X" && ll[8] =="X"
      ){
        win=" X is win";
      }
      else if(
          ll[0] == "0" && ll[1] == "0" && ll[2] == "0" ||
          ll[0] == "0" && ll[3] == "0" && ll[6] =="0" ||
          ll[0] == "0" && ll[4] == "0" && ll[8] =="0" ||
          ll[1] == "0" && ll[4] == "0" && ll[7] =="0" ||
          ll[2] == "0" && ll[5] == "0" && ll[8] =="0" ||
          ll[2] == "0" && ll[4] == "0" && ll[6] =="0" ||
          ll[3] == "0" && ll[4] == "0" && ll[5] =="0" ||
          ll[6] == "0" && ll[7] == "0" && ll[8] =="0"
      )
      {
        win="0 is win";
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toi"),
      ),
      body: Column(
        children: [Container(height: 100,),
          Row(
            children: [
              InkWell(onTap: () {
                cnt++;
                print(cnt);
                setState(() {
                  if(ll[0]=="" && win == "")
                    {
                      ll[0]=0;
                      if (cnt <= 4) {
                        while (true) {
                          int rr = Random().nextInt(9);
                          if (ll[rr] == "") {
                            ll[rr] = "X";
                            break;
                          }
                        }
                      }
                    }
                  winn();



                });
                

              },
                child: Container(margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  height: 100,alignment: Alignment.center,
                  child: Text("${ll[0]}",style: TextStyle(fontSize: 50),),
                  width: 100,
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),
              InkWell(onTap: () {
                setState(() {
                  if (ll[1] == "" && win == "")
                  {
                    ll[1] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //       print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });

              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 100,alignment: Alignment.center,
                  child: Text("${ll[1]}",style: TextStyle(fontSize: 50),),
                  width: 100,
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),

              InkWell(onTap: () {
                setState(() {
                  if (ll[2] == "" && win == "")
                  {
                    ll[2] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();
                  
                });

              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[2]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),

            ],
          ),
          Row(
            children: [
              InkWell(onTap: () {
                setState(() {
                  if (ll[3] == "" && win == "")
                  {
                    ll[3] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });

              },
                child: Container(margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[3]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),
              InkWell(onTap: () {
                setState(() {
                  if (ll[4] == "" && win == "")
                  {
                    ll[4] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });

              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[4]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),

              InkWell(onTap: () {
                setState(() {
                  if (ll[5] == "" && win == "")
                  {
                    ll[5] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });

              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[5]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),

            ],
          ),
          Row(
            children: [
              InkWell(onTap: () {
                setState(() {
                  if (ll[6] == "" && win == "")
                  {
                    ll[6] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });

              },
                child: Container(margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[6]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),
              InkWell(onTap: () {
                setState(() {
                  if (ll[7] == "" && win == "")
                  {
                    ll[7] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });


              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[7]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),

              InkWell(onTap: () {
                setState(() {
                  if (ll[8] == "" && win == "")
                  {
                    ll[8] = "0";
                    cnt++;
                    print(cnt);
                    if (cnt <= 4) {
                      while (true) {
                        int rr = Random().nextInt(9);
                        //    print(rr);
                        if (ll[rr] == "") {
                          ll[rr] = "X";
                          break;
                        }
                      }
                    }
                  }
                  winn();

                });

              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 100,alignment: Alignment.center,
                  width: 100,
                  child: Text("${ll[8]}",style: TextStyle(fontSize: 50),),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),

            ],
          ),
          Container(height: 100,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                height: 70,
                width: 100,
                alignment: Alignment.center,
                child: Text("${win}",style: TextStyle(fontSize: 40,),),
                decoration: BoxDecoration(color: Colors.yellow),
              ),
              InkWell(onTap: () {
                setState(() {
                  win="";
                  cnt=0;
                  ll=List.filled(9,"");
                });

              },
                child: Container(margin: EdgeInsets.all(5),
                  height: 70,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text("Reset",style: TextStyle(fontSize: 40,)),
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),



            ],
          ),


        ],
      ),
    );
  }
}
