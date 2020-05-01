import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

final opciones=['Felix','Victor','Mario','Julio','Jose'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       title: Text('Clientes Actuales'),

     ),
       body: ListView(
         //children: _crearItems()
         children: _crearItemsCorta()

     ),

    );

  }




//List<Widget> _crearItems(){

//List<Widget> lista= new List<Widget>();

 // for(String opt in opciones){

  //  final tempWidget= ListTile(
  //    title:Text( opt ),
   //   );

     // lista..add(tempWidget)
       //     ..add(Divider());
 // }
  //return lista;
//}

      List<Widget>  _crearItemsCorta(){
        var widgets =opciones.map((item){

          return Column(
            children: <Widget>[
              ListTile(
                title:Text(item +'!'),
                subtitle: Text('Plan Starter'),
                leading: Icon(Icons.add_shopping_cart),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap:(){},
              ),
              Divider()
            ],
          );


        }).toList();


        return widgets;
      }

}