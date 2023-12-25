import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:injectable/injectable.dart';

@injectable
class DictionaryService {
  DictionaryService({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<Stream<FlDictionary?>?> getCurrentDictionaryStream(
      String stringId) async {
    return _firestore.collection("dictionaries").doc(stringId).snapshots().map(
          (snapshot) => snapshot.data() == null
              ? null
              : FlDictionary.fromJson(snapshot.data()!),
        );
  }

  Future<void> updateDictionary(FlDictionary dictionary) async {
    final doc = _firestore.collection('dictionaries').doc(dictionary.id);
    await doc.set(dictionary.toJson());
  }
}
