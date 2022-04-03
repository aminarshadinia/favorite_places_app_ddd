import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sample_app/injectable.dart';
import 'package:sample_app/domain/auth/i_auth_facade.dart';
import 'package:sample_app/domain/core/errors.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
extension FirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    // we get iauthfacace data using dependency injection
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    // if orElse return we throw an error
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    // lastly if no error happens and user is available we want to return from this extension method
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
        // if id is not availabl we gonna crash the app


        // Wecan ALSO do the code like this but its better to devide the codes so we use DocumentRefrence extension
        // return FirebaseFirestore.instance
        // .collection('users')
        // .doc(user.id.getOrCrash()).collection('places');
  }
}

// this will define an extension for places Collection
extension DocumentReferenceX on DocumentReference {
  CollectionReference get placeCollection => collection('places');

}
