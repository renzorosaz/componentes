import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar:AppBar(
        title: Text('Avatar Page'),
        actions:<Widget>[

            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://t2.uc.ltmcdn.com/images/8/0/7/como_hacer_una_rutina_full_body_47708_600.jpg'),
                radius:25.0,
              ),
            ),

          Container(
            margin: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor:  Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'),
          image: NetworkImage('https://plazadelmarcw.com/wp-content/uploads/2018/01/entrenamiento-personal-marbella.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          ),
      ),


    );
 }
}