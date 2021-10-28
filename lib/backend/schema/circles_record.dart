import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'circles_record.g.dart';

abstract class CirclesRecord
    implements Built<CirclesRecord, CirclesRecordBuilder> {
  static Serializer<CirclesRecord> get serializer => _$circlesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'UserId')
  DocumentReference get userId;

  @nullable
  @BuiltValueField(wireName: 'FollowerId')
  DocumentReference get followerId;

  @nullable
  bool get addedByUser;

  @nullable
  bool get addedByFollower;

  @nullable
  @BuiltValueField(wireName: 'Id')
  int get id;

  @nullable
  String get eventRef;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CirclesRecordBuilder builder) => builder
    ..addedByUser = false
    ..addedByFollower = false
    ..id = 0
    ..eventRef = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Circles');

  static Stream<CirclesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CirclesRecord._();
  factory CirclesRecord([void Function(CirclesRecordBuilder) updates]) =
      _$CirclesRecord;

  static CirclesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCirclesRecordData({
  DocumentReference userId,
  DocumentReference followerId,
  bool addedByUser,
  bool addedByFollower,
  int id,
  String eventRef,
}) =>
    serializers.toFirestore(
        CirclesRecord.serializer,
        CirclesRecord((c) => c
          ..userId = userId
          ..followerId = followerId
          ..addedByUser = addedByUser
          ..addedByFollower = addedByFollower
          ..id = id
          ..eventRef = eventRef));
