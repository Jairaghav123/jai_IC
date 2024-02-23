


import 'package:flutter/material.dart';
import 'package:instrument_cluster/components/colordata.dart';

class MyRoad extends StatelessWidget {
  const MyRoad({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white38,//primarycolor,

      appBar: AppBar(
        backgroundColor: Colors.indigo.withOpacity(0.6),
        elevation:10,
        shadowColor:Colors.grey,

        title:const Text("Tresa Instrument cluster"),
        centerTitle: true,


      ),

      body:Center(
        child: Stack(
          children: [

             Container(
               margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,left:MediaQuery.of(context).size.width*0.15, ),
              height:MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.30,
              //color: Colors.blue,
               child: Image.asset("assets/blackcar.png"),
            ),



            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.30),
              height:MediaQuery.of(context).size.height*.70,width:MediaQuery.of(context).size.width*.60 ,
                //color: Colors.black,


              child: CustomPaint(
                painter:My3droad(),
                child: CustomPaint(
                  painter: innerPath(),

               ),
              //),
            )
            )]

            ),
          ),
        );





  }
}



//my road widget
class My3droad extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {


    //first close path
    Path path=Path()
        ..moveTo(0, size.height)
        ..lineTo(size.width*0.4, size.height*0.05)
      ..lineTo(size.width*0.6, size.height*0.05)
      ..lineTo(size.width, size.height)
    ..lineTo(size.width*0, size.height)




    ..close();





    ////////////////////////////////////
    //border
    Path path2=Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width*0.4, size.height*0.05);

      Path path3=Path()
      ..moveTo(size.width*0.6, size.height*0.05)
      ..lineTo(size.width, size.height);
     // ..lineTo(size.width*0, size.height);

 ///Left black line
    Paint paint2=Paint()
    ..blendMode=BlendMode.colorDodge
    ..style=PaintingStyle.stroke
    ..strokeWidth=4
    ..color=Colors.grey;

    canvas.drawPath(path2, paint2);


  //Right black line
    Paint paint3=Paint()
      ..blendMode=BlendMode.colorDodge
      ..style=PaintingStyle.stroke
      ..strokeWidth=6
      ..color=Colors.grey;
    canvas.drawPath(path3, paint3);















    Paint paint =Paint()
    ..blendMode=BlendMode.colorBurn
    ..style=PaintingStyle.fill
    ..strokeWidth=4
    ..color=Colors.grey;

    canvas.drawPath(path, paint);




  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}




///white lines
class innerPath extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Path path=Path()
        ..moveTo(size.width*0.10, size.height*1)
    ..lineTo(size.width*0.45, size.height*0.10)

    ..moveTo(size.width*.90, size.height*1)
    ..lineTo(size.width*0.55, size.height*0.10);


    Paint paint=Paint()
    ..blendMode=BlendMode.colorDodge
    ..style=PaintingStyle.stroke
    ..color=Colors.white54
    ..strokeWidth=1;


    canvas.drawPath(path, paint);




    Path path2=Path()
      ..moveTo(size.width*0.08, size.height*1)
      ..lineTo(size.width*0.435, size.height*0.10)
      ..moveTo(size.width*.92, size.height*1)
      ..lineTo(size.width*0.565, size.height*0.10);



    Paint paint2=Paint()
      ..blendMode=BlendMode.colorDodge
      ..style=PaintingStyle.stroke
      ..color=Colors.white54
      ..strokeWidth=1;


    canvas.drawPath(path2, paint2);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }




}



