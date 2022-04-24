import 'dart:math';

import 'package:flutter/material.dart';

class numpuzz extends StatefulWidget {
  const numpuzz({Key? key}) : super(key: key);

  @override
  _numpuzzState createState() => _numpuzzState();
}

class _numpuzzState extends State<numpuzz> {
  List b=["1","2","3","4","5","6","7","8","","10","11","12","13","14","15","16"];

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   setState(() {
  //     for(int i=0;i<16;i++){
  //
  //       while(true){
  //         int a=Random().nextInt(16);
  //         if(!b.contains("${a}")){
  //           b[i]="$a";
  //           break;
  //         }
  //       }
  //     }
  //     print("before==$b");
  //
  //     for(int i=0;i<16;i++){
  //
  //       if(b[i]=="0"){
  //
  //         b[i]="";
  //       }
  //     }
  //     print("after==$b");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Puzzle"),
      ),backgroundColor: Colors.black,
      body: Column(
        children: [Container(height: 100,),
          Row(
            children: [
              InkWell(onTap: () {
                setState(() {
                  if(b[1]=="")
                    {
                      b[1]=b[0];
                      b[0]="";
                    }
                   if(b[4]=="")
                  {
                    b[4]=b[0];
                    b[0]="";
                  }
                   if(b[2]=="")
                  {
                    b[2]=b[1];
                    b[1]=b[0];
                    b[0]="";
                  }
                   if(b[3]=="")
                  {
                    b[3]=b[2];
                    b[2]=b[1];
                    b[1]=b[0];
                    b[0]="";
                  }
                  if(b[8]=="")
                  {
                    b[8]=b[4];
                    b[4]=b[0];
                    b[0]="";
                  }


                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[0]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b1
              InkWell(onTap: () {
                setState(() {
                  if(b[0]=="")
                    {
                      b[0]=b[1];
                      b[1]="";
                    }
                  if(b[2]=="")
                  {
                    b[2]=b[1];
                    b[1]="";
                  }
                  if(b[3]=="")
                  {
                    b[3]=b[2];
                    b[2]=b[1];
                    b[1]="";
                  }
                  if(b[5]=="")
                  {
                    b[5]=b[1];
                    b[1]="";
                  }

                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[1]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b2
              InkWell(onTap: () {
                setState(() {
                  if(b[0]=="")
                  {
                    b[0]=b[1];
                    b[1]=b[2];
                    b[2]="";
                  }
                  if(b[1]=="")
                  {
                    b[1]=b[2];

                    b[2]="";
                  }
                  if(b[3]=="")
                  {
                    b[3]=b[2];

                    b[2]="";
                  }
                  if(b[6]=="")
                  {
                    b[6]=b[2];

                    b[2]="";
                  }
                });


              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[2]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b3
              InkWell(onTap: () {
                setState(() {
                  if(b[0]=="")
                  {
                    b[0]=b[1];
                    b[1]=b[2];
                    b[2]=b[3];
                    b[3]="";
                  }
                  if(b[1]=="")
                  {
                    b[1]=b[2];
                    b[2]=b[3];
                    b[3]="";
                  }
                  if(b[2]=="")
                  {
                    b[2]=b[3];
                    b[3]="";
                  }
                  if(b[7]=="")
                  {

                    b[7]=b[3];
                    b[3]="";
                  }

                });


              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[3]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b4

            ],
          ),
          Row(
            children: [
              InkWell(onTap: () {
                setState(() {
                  if(b[0]=="")
                  {
                    b[0]=b[4];

                    b[4]="";
                  }
                  if(b[5]=="")
                  {
                    b[5]=b[4];
                    b[4]="";
                  }
                  if(b[6]=="")
                  {
                    b[6]=b[5];
                    b[5]=b[4];
                    b[4]="";
                  }
                  if(b[7]=="")
                  {
                    b[7]=b[6];
                    b[6]=b[5];
                    b[5]=b[4];
                    b[4]="";
                  }
                  if(b[8]=="")
                  {
                    b[8]=b[12];
                    b[12]="";
                  }
                  if(b[8]=="")
                  {
                    b[8]=b[4];

                    b[4]="";
                  }

                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[4]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b5
              InkWell(onTap: () {
                setState(() {
                  if(b[1]=="")
                  {
                    b[1]=b[5];
                    b[5]="";
                  }
                  if(b[4]=="")
                  {
                    b[4]=b[5];
                    b[5]="";
                  }
                  if(b[6]=="")
                  {
                    b[6]=b[5];

                    b[5]="";
                  }
                  if(b[7]=="")
                  {
                    b[7]=b[6];
                    b[6]=b[5];
                    b[5]="";
                  }


                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[5]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b6
              InkWell(onTap: () {
                setState(() {
                  if(b[2]=="")
                  {
                    b[2]=b[6];
                    b[6]="";
                  }
                  if(b[4]=="")
                  {
                    b[4]=b[5];
                    b[5]=b[6];
                    b[6]="";
                  }
                  if(b[5]=="")
                  {
                    b[5]=b[6];
                    b[6]="";
                  }
                  if(b[7]=="")
                  {
                    b[7]=b[6];
                    b[6]="";
                  }
                });


              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[6]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b7
              InkWell(onTap: () {
                setState(() {
                  if(b[3]=="")
                  {
                    b[3]=b[7];
                    b[7]="";
                  }
                  if(b[4]=="")
                  {
                    b[4]=b[5];
                    b[5]=b[6];
                    b[6]=b[7];
                    b[7]="";
                  }
                  if(b[5]=="")
                  {
                    b[5]=b[6];
                    b[6]=b[7];
                    b[7]="";
                  }
                  if(b[6]=="")
                  {
                    b[6]=b[7];
                    b[7]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[7]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b8

            ],
          ),
          Row(
            children: [
              InkWell(onTap: () {
                setState(() {
                  if(b[0]=="")
                  {
                    b[0]=b[4];
                    b[4]=b[8];

                    b[8]="";
                  }
                  if(b[4]=="")
                  {
                    b[4]=b[8];
                    b[8]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[8]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b9
              InkWell(onTap: () {
                setState(() {
                  if(b[1]=="")
                  {
                    b[1]=b[5];
                    b[5]=b[9];
                    b[9]="";
                  }
                  if(b[5]=="")
                  {
                    b[5]=b[9];
                    b[9]="";
                  }
                  if(b[8]=="")
                  {
                    b[8]=b[9];
                    b[9]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[9]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b10
              InkWell(onTap: () {
                setState(() {
                  if(b[2]=="")
                  {
                    b[2]=b[6];
                    b[6]=b[10];
                    b[10]="";
                  }
                  if(b[6]=="")
                  {
                    b[6]=b[10];

                    b[10]="";
                  }
                  if(b[8]=="")
                  {
                    b[8]=b[9];
                    b[9]=b[10];
                    b[10]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[10]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b11
              InkWell(onTap: () {
                setState(() {
                  if(b[3]=="")
                  {
                    b[3]=b[7];
                    b[7]=b[11];
                    b[11]="";
                  }
                  if(b[7]=="")
                  {

                    b[7]=b[11];
                    b[11]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[11]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b12

            ],
          ),
          Row(
            children: [
              InkWell(onTap: () {
                setState(() {
                  if(b[0]=="")
                  {
                    b[0]=b[4];
                    b[4]=b[8];
                    b[8]=b[12];
                    b[12]="";
                  }
                  if(b[4]=="")
                  {
                    b[4]=b[8];
                    b[8]=b[12];
                    b[12]="";
                  }
                  if(b[8]=="")
                    {
                      b[8]=b[12];
                      b[12]="";
                    }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[12]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b13
              InkWell(onTap: () {
                setState(() {
                  if(b[1]=="")
                  {
                    b[1]=b[5];
                    b[5]=b[9];
                    b[9]=b[13];
                    b[13]="";
                  }
                  if(b[5]=="")
                  {
                    b[5]=b[9];
                    b[9]=b[13];
                    b[13]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[13]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b14
              InkWell(onTap: () {
                setState(() {
                  if(b[2]=="")
                  {
                    b[2]=b[6];
                    b[6]=b[10];
                    b[10]=b[14];
                    b[14]="";
                  }
                  if(b[6]=="")
                  {
                    b[6]=b[10];
                    b[10]=b[14];
                    b[14]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[14]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b15
              InkWell(onTap: () {
                setState(() {
                  if(b[3]=="")
                  {
                    b[3]=b[7];
                    b[7]=b[11];
                    b[11]=b[15];
                    b[15]="";
                  }
                  if(b[7]=="")
                  {

                    b[7]=b[11];
                    b[11]=b[15];
                    b[15]="";
                  }
                });

              },
                child: Container(
                  height: 80,
                  width: 80,
                  child: Text(
                    "${b[15]}",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),//b16

            ],
          ),

          Container(height: 100,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              InkWell(onTap: () {

              },
                child: Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    "Win",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),
              InkWell(onTap: () {

              },
                child: Container(
                  height: 100,
                  width: 150,
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: (50), color: Colors.brown),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
