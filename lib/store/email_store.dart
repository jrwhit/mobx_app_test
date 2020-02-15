import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'email_store.g.dart';

class EmailStore = _EmailStore with _$EmailStore;

abstract class _EmailStore with Store{
  @observable
  bool buttonSelect = false;

  @action
  void changeEmail(value){
    print(value);
    buttonSelect = EmailValidator.validate(value);
  }
}