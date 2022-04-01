import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //Contraseña
  final _formKey = GlobalKey<FormState>();
  //editar campos
  final nombreEditingController = new TextEditingController();
  final apellidoEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmarPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Campo nombre
    final nombre = TextFormField(
      autofocus: false,
      controller: nombreEditingController,
      //validacion
      validator: (value) {
        nombreEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Nombre",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final apellido = TextFormField(
      autofocus: false,
      controller: apellidoEditingController,
      //validacion
      validator: (value) {
        apellidoEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Apellido",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final email = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      //validacion
      validator: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final password = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      //validacion
      validator: (value) {
        nombreEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Contraseña",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final confirmPassword = TextFormField(
      autofocus: false,
      controller: confirmarPasswordEditingController,
      //validacion
      validator: (value) {
        nombreEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirmar contraseña",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 160, 21, 214),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("Registrar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "Tlaxporte",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 40.0,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 45.0),
                    nombre,
                    SizedBox(height: 45.0),
                    apellido,
                    SizedBox(height: 45.0),
                    email,
                    SizedBox(height: 45.0),
                    password,
                    SizedBox(height: 45.0),
                    confirmPassword,
                    SizedBox(height: 35.0),
                    registerButton,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
