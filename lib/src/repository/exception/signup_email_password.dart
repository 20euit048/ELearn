class SignUpWithEmailAndPasswordFailure {
  final String message;
  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignUpWithEmailAndPasswordFailure(
            'please enter strong password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure('Email is not valid');
      case 'email_already_in-use':
        return SignUpWithEmailAndPasswordFailure('An account already exists');
      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordFailure('operation not allowed');
      case 'user-disabled':
        return SignUpWithEmailAndPasswordFailure('This user has been disabled');
      default:
        return SignUpWithEmailAndPasswordFailure();
    }
  }
}
