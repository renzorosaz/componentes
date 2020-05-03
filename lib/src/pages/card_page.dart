import 'package:flutter/material.dart';



class CardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){

      return Scaffold(
      appBar:AppBar(
        title:Text('Cards'),
        

      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipoBody(),
          SizedBox(height: 30.0,),
          _cardTipo22(),
          SizedBox(height: 30.0,),
        ],
      ),
    );

  }

   Widget  _cardTipo1(){

   return Card(
     elevation: 10.0,
     shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
     child: Column(
       children: <Widget>[
         ListTile(
           leading :Icon(Icons.photo_album,color: Colors.blue),
           title:Text('Tip Nutricional'),
           subtitle: Text('Concentrate en tu entrenamiento de hoy, te pondremos buena música'),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             FlatButton(
               child:Text('Cancelar'),
               onPressed: (){},
             ),
             FlatButton(
               child:Text('Ok'),
               onPressed: (){},
             )
           ],
         )

       ],
     ),
   );

  }

  Widget _cardTipo2(){

   final card= Container(
      //clipBehavior: ,

      child: Column(
        children: <Widget>[
          FadeInImage(
          image:NetworkImage('https://image.freepik.com/foto-gratis/vista-lateral-mujer-muscular-hermosa-que-ejecuta-rueda-ardilla_109710-1641.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
          ),

         // Image(
          //  image:NetworkImage('https://image.freepik.com/foto-gratis/vista-lateral-mujer-muscular-hermosa-que-ejecuta-rueda-ardilla_109710-1641.jpg'),
         // ),
          Container(
            padding:EdgeInsets.all(10.0) ,
            child: Text('Full Cardio'),
            )
        ],
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color:  Colors.white,
        boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0),
        )
        ]
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
 
      ),

     //c


    );



  }

  Widget _cardTipoBody(){
    
  final cardtb= Container(
      //clipBehavior: ,

      child: Column(
        children: <Widget>[
          FadeInImage(
          //image:NetworkImage('https://image.freepik.com/foto-gratis/vista-lateral-mujer-muscular-hermosa-que-ejecuta-rueda-ardilla_109710-1641.jpg'),
          image: AssetImage('assets/planbody3.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          width: 400,
          fit: BoxFit.cover,
          ),

         // Image(
          //  image:NetworkImage('https://image.freepik.com/foto-gratis/vista-lateral-mujer-muscular-hermosa-que-ejecuta-rueda-ardilla_109710-1641.jpg'),
         // ),
          Container(
            padding:EdgeInsets.all(10.0) ,
            child: Text('Entrenamientos Físicos'),
            )
        ],
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        //color:  Colors.red
        boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.lightBlue,
        )
        ]
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: cardtb,
 
      ),

     //c


    );
  }

  Widget _cardTipo22(){
  
  final card22= Container(
      //clipBehavior: ,

      child: Column(
        children: <Widget>[
          FadeInImage(
          //image:NetworkImage('https://image.freepik.com/foto-gratis/vista-lateral-mujer-muscular-hermosa-que-ejecuta-rueda-ardilla_109710-1641.jpg'),
          image: AssetImage('assets/zonanutricionista1.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
          ),

         // Image(
          //  image:NetworkImage('https://image.freepik.com/foto-gratis/vista-lateral-mujer-muscular-hermosa-que-ejecuta-rueda-ardilla_109710-1641.jpg'),
         // ),
          Container(
            padding:EdgeInsets.all(10.0) ,
            child: Text('Consejeria Nutricional'),
            )
        ],
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        //color:  Colors.red
        boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.green,
        )
        ]
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card22,
 
      ),

     //c


    );
  }

}