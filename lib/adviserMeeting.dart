

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'eventOrService.dart';
import 'package:fbla_app/tasksClicked.dart';


List<String> pendingTasksImage = ['image/meetingagenda.png', 'image/dashBAA.png', 'image/projects.png', 'image/projects.png', 'image/projects.png'];
List<String> pendingTasksName = ['Set Meeting Agenda', 'Approve BAA', 'Register for SLC', 'Register for SLC', 'Register for SLC'];


class adviserMeeting extends StatelessWidget{


  pendingTasks() {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        child: ClipRRect(

          borderRadius: new BorderRadius.circular(40.0),
          child: Container(
            width: MediaQuery.of(context).size.height/5,
            child: ButtonTheme(

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(
                      child: Image.asset(pendingTasksImage[index],scale: 0.6,),

                      onPressed: (){


                      },

                    ),


                    //TODO: style text
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text(pendingTasksName[index],style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),),
                    )

                  ],
                )


            ),
            color: Colors.black,
          ),
        ),
        padding: EdgeInsets.all(15),
      );

    },

      itemCount: pendingTasksImage.length,
      scrollDirection: Axis.horizontal,




    );


  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(

        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Container(

                padding: EdgeInsets.only(left: 20),
                child: Text('Tami Moore', style: TextStyle(fontSize: 30, color: Colors.deepOrange,),),

              ),


              SafeArea(
                child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push<Widget>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => eventOrServiceState(),
                          ),
                        );
                      },
                      child: Icon(Icons.receipt),
                    )
                ),
              )

            ],

          ),

          Center(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: Text('Next Meeting',style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),),

          ),


          AspectRatio(
            aspectRatio: 2,

            child: Container(
              padding: EdgeInsets.only(top:20.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(40.0),
                child: Container(

                  decoration: BoxDecoration(

                    //TODO: Add gradient colors here
                      gradient: LinearGradient(colors: [Color.fromRGBO(29, 50, 81, 1), Color.fromRGBO(252, 66, 30, 1)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Text('Date of Next Meet',style: TextStyle(fontSize: 30, color: Colors.white,)),
                      ),


                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text('Location of Next Meet',style: TextStyle(fontSize: 30, color: Colors.white,)),
                      )

                    ],

                  ),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),


          Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text('*Updated as of Last Meeting*', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Total Members', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                Text('100', style: TextStyle(fontSize: 20, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30,top: 30),
          ),


          Container(
            child: Divider(
              thickness: 5,
              color: Colors.black,
            ),
            padding: EdgeInsets.only(left: 30, right: 30),
          ),




          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Members Present', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                Text('64', style: TextStyle(fontSize: 20, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30,top: 30),
          ),


          Container(
            child: Divider(
              thickness: 5,
              color: Colors.black,
            ),
            padding: EdgeInsets.only(left: 30, right: 30),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Members Absent', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                Text('36', style: TextStyle(fontSize: 20, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30,top: 30),
          ),


          Container(
            child: Divider(
              thickness: 5,
              color: Colors.black,
            ),
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 1),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Members signed up for Competition', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                Text('69', style: TextStyle(fontSize: 20, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

              ],
            ),
            padding: EdgeInsets.only(left: 30, right: 30,top: 30),
          ),


          Container(
            child: Divider(
              thickness: 5,
              color: Colors.black,
            ),
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
          ),





          //adjust left right padding to increase or decrease width of button
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 55.0,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(

                  //TODO: Add gradient colors here
                    gradient: LinearGradient(colors: [Color.fromRGBO(29, 50, 81, 1), Color.fromRGBO(252, 66, 30, 1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(

                  alignment: Alignment.center,
                  child: Text(
                    "Check into Meeting",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ),


          Divider(
            height: 50,
            color: Colors.transparent,
          ),

          SafeArea(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 5, bottom: 20),
              child: Text('Meeting Tools',style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),),

          ),



          AspectRatio(
            aspectRatio: 2,
            child: pendingTasks(),
          )




        ],




      ),
    );
  }



}