import 'package:firebase_auth/firebase_auth.dart';

import 'package:sample_app/domain/auth/user.dart';
import 'package:sample_app/domain/core/values_objects.dart';



extension FirebaseUserDomainX on User {
  Userz toDomain() {
    return Userz(id: UniqueId.formUniqueString(uid));
  }
}



// @lazySingleton
// class FirebaseUserMapper {
//   Userz toDomain(User _) {
//     return Userz(id: UniqueId.formUniqueString(_.uid));
//     // return _ == null
//     //     ? null
//     //     : Userz? (
//     //         id: UniqueId.fromUniqueString(_.uid),
//     //         name: StringSingleLine(_.displayName ?? _.email.split('@').first),
//     //         emailAddress: EmailAddress(_.email),
//     //       )
//   }
// }
