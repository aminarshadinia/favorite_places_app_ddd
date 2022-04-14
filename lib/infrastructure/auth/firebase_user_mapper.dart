import 'package:firebase_auth/firebase_auth.dart';

import 'package:sample_app/domain/auth/user.dart';
import 'package:sample_app/domain/core/values_objects.dart';



extension FirebaseUserDomainX on User {
  Userz toDomain() {
    return Userz(id: UniqueId.fromUniqueString(uid));
  }
}