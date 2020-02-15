import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_app_test/store/email_store.dart';

class HomeMobx extends StatelessWidget {
  final emailStore = EmailStore();

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
                onChanged: emailStore.changeEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail"
                ),
              ),
              Observer(
                builder: (_){
                  return MaterialButton(
                    color: Colors.blueAccent,
                    disabledColor: Colors.grey,
                    minWidth: double.infinity,
                    child: Text(
                        "Continuar"
                    ),
                    onPressed: emailStore.buttonSelect ? _botaoAtivado : null,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
