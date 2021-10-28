import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'age21_switch')
  String get age21Switch;

  @nullable
  @BuiltValueField(wireName: 'guestlimit_switch')
  String get guestlimitSwitch;

  @nullable
  @BuiltValueField(wireName: 'guestlimit_number')
  String get guestlimitNumber;

  @nullable
  @BuiltValueField(wireName: 'cover_fee')
  String get coverFee;

  @nullable
  int get countInner;

  @nullable
  int get countOuter;

  @nullable
  int get countRequest;

  @nullable
  int get countFollowers;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..age21Switch = ''
    ..guestlimitSwitch = ''
    ..guestlimitNumber = ''
    ..coverFee = ''
    ..countInner = 0
    ..countOuter = 0
    ..countRequest = 0
    ..countFollowers = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String age21Switch,
  String guestlimitSwitch,
  String guestlimitNumber,
  String coverFee,
  int countInner,
  int countOuter,
  int countRequest,
  int countFollowers,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..age21Switch = age21Switch
          ..guestlimitSwitch = guestlimitSwitch
          ..guestlimitNumber = guestlimitNumber
          ..coverFee = coverFee
          ..countInner = countInner
          ..countOuter = countOuter
          ..countRequest = countRequest
          ..countFollowers = countFollowers));
