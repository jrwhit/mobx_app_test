import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool buttonSelect;

  @override
  void initState() {
    // TODO: implement initState
    buttonSelect = false;
    super.initState();
  }

  void _changeEmail(value){
    print(value);

    setState(() {
      buttonSelect = EmailValidator.validate(value);
    });
  }

  void _botaoAtivado(){
    print("botão ativado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                TextField(
                  onChanged: _changeEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail"
                  ),
                ),
                MaterialButton(
                  color: Colors.blueAccent,
                  disabledColor: Colors.grey,
                  minWidth: double.infinity,
                  child: Text(
                    "Continuar"
                  ),
                  onPressed: buttonSelect ? _botaoAtivado : null,
                )
            ],
          ),
        ),
      ),
    );
  }
}
