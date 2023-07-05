
part of 'seller_signup_bloc.dart';

@immutable
abstract class SignupEvent {}

// ignore: must_be_immutable
class SignupEvents extends SignupEvent{

  String name;
  String password;
  String cnfPassController;
  String email;
  String phone;


  SignupEvents({required this.name, required this.password,
    required this.cnfPassController, required this.email, required this.phone, });
}