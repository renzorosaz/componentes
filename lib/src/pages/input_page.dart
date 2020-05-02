
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre='';
  String _email='';
  String _fecha='';
  String _password='';

  String  _opcionSeleccionada= 'Volar';
  List<String> _poderes= ['Volar','Rayos X', 'Super Aliento', 'Super fuerza'];

  TextEditingController _inputFieldDataController= new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de Texto'),
      ),
      body: ListView(
        padding:EdgeInsets.symmetric(horizontal:10.0,vertical:20.0),
        children: <Widget>[
        _crearInput(),
        Divider(),
        _crearEmail(),
        Divider(),
        _crearPassword(),
        Divider(),
        _crearFecha(context),
        Divider(),
        _crearDropdown(),
        Divider(),
        _crearPersona(),


        ],
      ),
    );
  }

    Widget _crearInput(){

      return TextField(
       // autofocus: true,
       textCapitalization: TextCapitalization.sentences,
       decoration: InputDecoration(
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
         ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo el nombre',
        suffixIcon:  Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
       ),

        onChanged: (valor) {
            setState(() {
               _nombre=valor;
            });
      },
      );

    }

    List<DropdownMenuItem<String>> getOpcionesDropDown(){

      List<DropdownMenuItem<String>> lista= new List();

      _poderes.forEach((poder){

          lista.add(DropdownMenuItem(
             value: poder,
             child: Text(poder),
          ));

      });
      return lista;
    }

    Widget _crearDropdown(){

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width:30.0),
         Expanded(
        child: DropdownButton(
        value: _opcionSeleccionada,
        items:getOpcionesDropDown(),
        onChanged: (opt){
              setState(() {
                _opcionSeleccionada = opt;
              });
        },
        ),
        )

      ],
    );

  }

    Widget _crearPersona(){

      return ListTile(
        title: Text('Nombre es: $_nombre'),
        subtitle: Text('Email: $_email'),
        trailing: Text(_opcionSeleccionada),
      );
    }


    Widget _crearEmail(){

      return TextField(
       // autofocus: true,
       keyboardType: TextInputType.emailAddress,
       decoration: InputDecoration(
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
         ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon:  Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
       ),

        onChanged: (valor)=>setState(() {
               _email=valor;
            })

      );
    }

    Widget _crearPassword(){

      return TextField(
       // autofocus: true,
       obscureText: true,
       decoration: InputDecoration(
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
         ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Password',
        labelText: 'password',
        suffixIcon:  Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
       ),

        onChanged: (valor)=>setState(() {
               _password=valor;
            })

      );
    }

    Widget _crearFecha(BuildContext context){

    return TextField(
       enableInteractiveSelection: false,
       controller: _inputFieldDataController,
       decoration: InputDecoration(
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
         ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon:  Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
       ),
        onTap: (){

          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);

        },
      );
  }

    _selectDate(BuildContext context) async{
      
      DateTime picked= await showDatePicker(
        context: context,
         initialDate: new DateTime.now(),
          firstDate: new DateTime(2018),
           lastDate: new DateTime(2025),
           locale: Locale('es','ES'),
      );
      
      if(picked!=null){
        setState(() {
          _fecha= picked.toString();
          _inputFieldDataController.text= _fecha;
        });
      }
    }
}