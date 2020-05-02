import  'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

double  _valorSlider=100.0;
bool _bloquearcheck =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding:EdgeInsets.only(top:50.0),
        child:Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child:_crearImagen()
            ),

          ],
        ),
      ),
    );
  }




  Widget _crearSlider(){

    return Slider(
      activeColor: Colors.indigoAccent,
      label:'Tamaño de la Imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,

      onChanged:(_bloquearcheck) ? null: (valor){
        setState(() {
          _valorSlider= valor;
        });
      },
    );
  }

  Widget _checkBox(){

     /// return Checkbox(
     //   value: _bloquearcheck,
     //   onChanged: (valor){
     //     setState(() {
    //       _bloquearcheck =valor;
    //     });
    //   },
     // );
     return CheckboxListTile(
       title: Text('Bloquear Slider'),
      value: _bloquearcheck,
      onChanged: (valor){
          setState(() {
           _bloquearcheck =valor;
         });
       },
    );

  }

  Widget _crearSwitch(){
    return SwitchListTile(
       title: Text('Bloquear Slider'),
      value: _bloquearcheck,
      onChanged: (valor){
          setState(() {
           _bloquearcheck =valor;
         });
       },
    );

  }


  Widget _crearImagen(){

    return Image(
      image:NetworkImage('https://scontent.flim15-2.fna.fbcdn.net/v/t1.0-9/93905649_3996358240389337_4283077022638407680_n.jpg?_nc_cat=102&_nc_sid=85a577&_nc_eui2=AeFdMC9b0492hxvo1olX4s9XzwrTFncpJQHPCtMWdyklAYicdsCWgK8Fx6YzL0XvfsuZLyxAB9VN7cEuyMA3D5Cl&_nc_ohc=KVYtB7UqdNEAX-atzwJ&_nc_ht=scontent.flim15-2.fna&oh=161cbdf945fe31ee5ed1f9d4315018b4&oe=5ED3BA45'),
      width: _valorSlider,
      fit: BoxFit.contain, 
    );
  }



}