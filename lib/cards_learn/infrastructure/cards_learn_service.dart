import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:injectable/injectable.dart';

@injectable
class CardsLearnService {
  CardsLearnService({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<Stream<FlDictionary?>> getCurrentUserStream(
      String dictionaryId) async {
    return _firestore
        .collection("dictionaries")
        .doc(dictionaryId)
        .snapshots()
        .map((snapshot) => snapshot.data() == null
            ? null
            : FlDictionary.fromJson(snapshot.data()!));
  }
}
