import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: SubjectSelectState(),

    );
  }
}



class SubjectSelector extends StatefulWidget {
  @override
  SubjectSelectorState createState() => new SubjectSelectorState();
}



class SubjectSelectorState extends State<SubjectSelector>{
  bool ifPressed = true;
  bool selectArt = false;
  bool selectDT = false;
  bool selectGeo = false;
  var thisSubject = Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    width: 155.0,
    height: 50.0,
    alignment: Alignment.topLeft,
    decoration:



    BoxDecoration(
      border: Border.all(
          color: Color.fromRGBO(255, 255, 255, 0.0),
          width: 3.0),
      borderRadius: BorderRadius.circular(35.0),
    ),







    child: Center(







    ),





  );



  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.0),
      child:
      ifPressed
          ?


      InkWell(
        onTap: () {

          setState(() {
          });
        },
        splashColor: Colors.transparent,
        child:


        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 155.0,
          height: 50.0,
          alignment: Alignment.topLeft,
          decoration:



          BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
                color: Color.fromRGBO(255, 255, 255, 3.0),
                width: 3.0),
            borderRadius: BorderRadius.circular(35.0),
          ),






          child: Center(
              child:


              PopupMenuButton<String>(
                  icon: Icon(Icons.add),
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'Art',
                      child: InkWell(

                        onTap: () {

                          setState(() {
                            selectArt = !selectArt;

                            ifPressed = !ifPressed;


                          });
                        },
                        splashColor: Colors.transparent,



                        child:


                        Container(
                          padding: EdgeInsets.all(0),
                          width: 190.0,
                          height: 50.0,
                          alignment: Alignment.topLeft,
                          decoration:



                          BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.deepOrange[600],
                                Colors.deepOrange[700],
                                Colors.deepOrange[800],
                                Colors.deepOrange[900],
                              ],
                              stops: [0.25, 0.50, 0.75, 1],
                            ),
                            border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 0.0),
                                width: 3.0
                            ),
                            borderRadius: BorderRadius.circular(35.0),

                          ),







                          child: Center(
                            child:
                            Text(
                              'Art',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),





                          ),





                        ),



                      ),

                    ),
                    PopupMenuItem<String>(
                      value: 'DT',
                      child: InkWell(

                        onTap: () {

                          setState(() {
                            selectDT = !selectDT;
                            ifPressed = !ifPressed;

                          });
                        },
                        splashColor: Colors.transparent,



                        child:


                        Container(
                          padding: EdgeInsets.all(0),
                          width: 190.0,
                          height: 50.0,
                          alignment: Alignment.topLeft,
                          decoration:



                          BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink[300],
                                Colors.pink[400],
                                Colors.pink[500],
                                Colors.pink[600],
                              ],
                              stops: [0.25, 0.50, 0.75, 1],
                            ),
                            border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 0.0),
                                width: 3.0
                            ),
                            borderRadius: BorderRadius.circular(35.0),

                          ),







                          child: Center(
                            child:
                            Text(
                              'DT',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),





                          ),





                        ),



                      ),

                    ),

                    PopupMenuItem<String>(
                      value: 'Geography',
                      child: InkWell(

                        onTap: () {

                          setState(() {
                            selectGeo = !selectGeo;
                            ifPressed = !ifPressed;

                          });
                        },
                        splashColor: Colors.transparent,



                        child:


                        Container(
                          padding: EdgeInsets.all(00),
                          width: 190.0,
                          height: 50.0,
                          alignment: Alignment.topLeft,
                          decoration:



                          BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.lime[600],
                                Colors.lime[700],
                                Colors.lime[800],
                                Colors.lime[900],
                              ],
                              stops: [0.25, 0.50, 0.75, 1],
                            ),
                            border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 0.0),
                                width: 3.0
                            ),
                            borderRadius: BorderRadius.circular(35.0),

                          ),







                          child: Center(
                            child:
                            Text(
                              'Geography',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),





                          ),





                        ),



                      ),

                    ),




                  ]
              )



          ),
        ),
      )


          :

      InkWell(
        onTap: () {

          setState(() {
            ifPressed = !ifPressed;
          });
        },
        splashColor: Colors.transparent,



        child:

          thisSubject

      ),



    );

  }

  void getSubjectArt(){
    if (selectArt = true){
      thisSubject = Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: 155.0,
        height: 50.0,
        alignment: Alignment.topLeft,
        decoration:



        BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange[600],
              Colors.deepOrange[700],
              Colors.deepOrange[800],
              Colors.deepOrange[900],
            ],
            stops: [0.25, 0.50, 0.75, 1],
          ),
          border: Border.all(
              color: Color.fromRGBO(255, 255, 255, 0.0),
              width: 3.0),
          borderRadius: BorderRadius.circular(35.0),
        ),







        child: Center(
          child:
          Text(
            'Art',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),





        ),





      );

      selectGeo = false;
      selectDT = false;
    }
  }

  void getSubjectDT(){
    if (selectDT = true){
      thisSubject = Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: 155.0,
        height: 50.0,
        alignment: Alignment.topLeft,
        decoration:



        BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink[300],
              Colors.pink[400],
              Colors.pink[500],
              Colors.pink[600],
            ],
            stops: [0.25, 0.50, 0.75, 1],
          ),
          border: Border.all(
              color: Color.fromRGBO(255, 255, 255, 0.0),
              width: 3.0),
          borderRadius: BorderRadius.circular(35.0),
        ),







        child: Center(
          child:
          Text(
            'DT',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),





        ),





      );

      selectGeo = false;
      selectArt = false;

    }
  }

  void getSubjectGeo(){
    if (selectGeo = true){
      thisSubject = Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: 155.0,
        height: 50.0,
        alignment: Alignment.topLeft,
        decoration:



        BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow[700],
              Colors.yellow[700],
              Colors.yellow[800],
              Colors.yellow[900],
            ],
            stops: [0.25, 0.50, 0.75, 1],
          ),
          border: Border.all(
              color: Color.fromRGBO(255, 255, 255, 0.0),
              width: 3.0),
          borderRadius: BorderRadius.circular(35.0),
        ),







        child: Center(
          child:
          Text(
            'Geography',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),





        ),





      );

      selectArt = false;
      selectDT = false;
    }
  }

}

class SubjectSelectState extends StatefulWidget {
  @override
  SubjectSelectPage createState() => new SubjectSelectPage();
}

class SubjectSelectPage extends State<SubjectSelectState> {
  bool ifPressed = true;



  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SizedBox(
        height: 895,
        width: 430,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Stack(
            children: <Widget>[
              Positioned(
                //right: 43.0,
                left: 30,
                bottom: 800.0,
                child: Text(
                  "Timetable",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                //right: 43.0,
                left: 30,
                bottom: 775.0,
                child: Text(
                  "Sort your subjects into day-to-day schedule.",
                  style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(5, 5, 5, 0.5)),
                ),
              ),
              Positioned(
                right: 50.0,
                bottom: 25,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50.0,
                bottom: 25,
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                right: 220,
                bottom: 27,
                child: TabPageSelectorIndicator(
                  backgroundColor: Colors.black54,
                  size: 8.0,
                  borderColor: Colors.transparent,
                ),
              ),
              Positioned(
                right: 205,
                bottom: 27,
                child: TabPageSelectorIndicator(
                  backgroundColor: Colors.black,
                  size: 8.0,
                  borderColor: Colors.transparent,
                ),
              ),
              Positioned(
                right: 190,
                bottom: 27,
                child: TabPageSelectorIndicator(
                  backgroundColor: Colors.black54,
                  size: 8.0,
                  borderColor: Colors.transparent,
                ),
              ),
              Positioned(
                right: 175,
                bottom: 27,
                child: TabPageSelectorIndicator(
                  backgroundColor: Colors.black54,
                  size: 8.0,
                  borderColor: Colors.transparent,
                ),
              ),
              Positioned(
                left: 30,
                bottom: 735.0,
                child: Text(
                  "MONDAY",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 673,
                child: new SizedBox(
                  width: 360,
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SubjectSelector(),
                      SubjectSelector(
                      ),
                      SubjectSelector(),

                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 605.0,
                child: Text(
                  "TUESDAY",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 543,
                child: new SizedBox(
                  width: 360,
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SubjectSelector(),
                      SubjectSelector(),
                      SubjectSelector(),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 475.0,
                child: Text(
                  "WEDNESDAY",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 413,
                child: new SizedBox(
                  width: 360,
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SubjectSelector(),
                      SubjectSelector(),
                      SubjectSelector(),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 345.0,
                child: Text(
                  "THURSDAY",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 283,
                child: new SizedBox(
                  width: 360,
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SubjectSelector(),
                      SubjectSelector(),
                      SubjectSelector(),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 225.0,
                child: Text(
                  "FRIDAY",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GoogleSans'),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 163,
                child: new SizedBox(
                  width: 360,
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SubjectSelector(),
                      SubjectSelector(),
                      SubjectSelector(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
