import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Stream'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Column(


          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right:5),
              child: Card(
                elevation: 5,
                child: Container(
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(8)
                      ),
                      image: DecorationImage(
                          image:
                           //akid hon bte5od esm limage mn lclass lkbas 3le
                           //w bt7uta bl image asset hk kl background bkoon
                           //7asab lmedi
                            AssetImage("assets/images/back.jpg")
                          ,
                          fit: BoxFit.fill)
                  ) ,
                  height: 100.0,
                  width: 500,
                  child:
                      Padding(
                        padding: EdgeInsets.only(top: 33,bottom:4),
                        child: Container(
                          height: 100.0,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0),
                                  //Hon Akid esem lestaz wl medi mnkoon bdna njibon
                                  child: Text('CENG566L',style: TextStyle(fontSize: 25,color: Colors.white),),
                                ),
                                Text('A-Ali Haroun',style: TextStyle(fontSize: 20,color: Colors.white),)
                              ],
                            ),
                          ),

                        )
                      ),
                    ),
                  ),
                ),
            Container(
              height: 445,
              width: 500,
              child: ListView.builder(

                itemCount: items.length,
                itemBuilder: (context, index) {

                  if(Platform.isIOS){
                    return Dismissible(
                      key: Key(items[index]),
                      child: GestureDetector(
                        onTap: (){
                          //Open File
                        },

                        onDoubleTap: (){
                          //Share File
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Container(
                                    height: 50.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5),
                                            topLeft: Radius.circular(5)
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.scaleDown,
                                            image: getImage(index)
                                        )
                                    ),
                                  ),
                                ),
                                Container(

                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Chapter $index',
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          child: Container(

                                            width: 240,
                                            child: Text("Discussion Of chapter $index: \nDownload file by clicking here",style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(255, 48, 48, 54)
                                            ),),


                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                IconButton(

                                  icon: Icon(Icons.file_download),
                                  tooltip: 'Download',
                                  onPressed: () {
                                    setState(() {

                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onDismissed: (direction) {
                        // your item is swiped, perform operation here
                      },
                    );
                  }
                  return GestureDetector(
                    onTap: (){
                      //Open File
                    },
                    onDoubleTap: (){
                      //Share File
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(

                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                height: 50.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        topLeft: Radius.circular(5)
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.scaleDown,
                                        image: getImage(index)
                                    )
                                ),
                              ),
                            ),
                            Container(

                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Chapter $index',
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                      child: Container(

                                        width: 240,
                                        child: Text("Discussion Of chapter $index: \nDownload file by clicking here",style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 48, 48, 54)
                                        ),),


                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),



                            IconButton(

                              icon: Icon(Icons.file_download),
                              tooltip: 'Download',
                              onPressed: () {
                                setState(() {

                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // he hek 7atayta la 3abi llist n7na akid b3den mnraje3 json bl list
  List items = getDummyList();

  // Akid hon bl mosta2bal mnfawet b2aleb lmethod items[index]
  // w mshuf 7asab shu btraje3 type w 3a hk bnrage3 sura
  // mnkoon msamyin lsowar 3a esm type
  // fa t7t masalan return AssetImage("assets/images/${items[index].type}.png");
  static AssetImage getImage(int x){
      if(x %2 == 0 && x%4!=0)
        return AssetImage("assets/images/word.jpg");
      else if(x%4==0)
        return AssetImage("assets/images/Excel_P.png");
      else
        return AssetImage("assets/images/PDF.png");
  }

  //he lallist kman enseha
  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}
