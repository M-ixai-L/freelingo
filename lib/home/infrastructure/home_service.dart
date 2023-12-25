import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeService {
  HomeService({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;
  final FirebaseFirestore _firestore;

  Future<String> addDictionary(FlDictionary dictionary) async {
    final doc = _firestore.collection('dictionaries').doc();
    await doc.set(dictionary.copyWith(id: doc.id).toJson());
    return doc.id;
  }

  Future<List<FlDictionary>> getDictionaries(
      List<String> dictionariesId) async {
    // final doc = _firestore.collection('dictionaries').where(field);

    CollectionReference dictionariesCollection =
        FirebaseFirestore.instance.collection('dictionaries');

    QuerySnapshot querySnapshot = await dictionariesCollection
        .where(FieldPath.documentId, whereIn: dictionariesId)
        .get();

    List<FlDictionary> dictionaries = [];

    for (final doc in querySnapshot.docs) {
      if (doc.data() != null) {
        dictionaries
            .add(FlDictionary.fromJson(doc.data() as Map<String, dynamic>));
      }
    }
    return dictionaries;
  }
}
