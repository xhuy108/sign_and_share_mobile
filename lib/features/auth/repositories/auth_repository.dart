import 'package:dartz/dartz.dart';
import 'package:sign_and_share_mobile/core/common/models/user.dart';
import 'package:sign_and_share_mobile/core/utils/typedefs.dart';

class AuthRepository {
  // TODO: Implement your authentication logic here

  ResultFuture<void> signIn(String email, String password) async {
    // TODO: Implement sign in logic
    try {
      return right(null) ;
    }
    catch (e) {
      // Return an exception if sign in fails
      throw Exception('Sign in failed');
    }
    
  }

  // Future<void> signOut() async {
  //   // TODO: Implement sign out logic
  //   // Example: Clear user session or token

  //   // Return void or throw an exception if sign out fails
  // }

  // Future<User> signUp(String email, String password) async {
  //   // TODO: Implement sign up logic
  //   // Example: Call an API to create a new user

  //   // Return a User object if sign up is successful
  //   return User(email: email);
  // }

  // Future<bool> isSignedIn() async {
  //   // TODO: Implement check for signed in user
  //   // Example: Check if user session or token exists

  //   // Return true if user is signed in, false otherwise
  //   return false;
  // }
}
