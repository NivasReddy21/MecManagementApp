import 'package:firebase_auth/firebase_auth.dart';

class UserDetails {
  String userName;
  String userProfilePic;

  Future<FirebaseUser> getUser() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    getUserDetails(user);
    return user;
  }

  void getUserDetails(FirebaseUser user) async {
    if (user != null) {
      this.userName = user.displayName;
      this.userProfilePic = user.photoUrl;
    }
  }
}
