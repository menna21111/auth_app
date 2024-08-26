abstract class UserStates {}
class UserInitial extends UserStates {
  // Add any properties or methods specific to the initial state, if needed.
}

class Signinitial extends UserStates {}

class Signinloading extends UserStates {}

class SigninScuess extends UserStates {}

class SigninFailure extends UserStates {
  final String errormsg;

  SigninFailure(this.errormsg);
} 
