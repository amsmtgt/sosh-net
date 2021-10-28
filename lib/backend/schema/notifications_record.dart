import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'User')
  DocumentReference get user;

  @nullable
  String get message;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'Event')
  DocumentReference get event;

  @nullable
  bool get hasEvent;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..message = ''
    ..hasEvent = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;

  static NotificationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNotificationsRecordData({
  DocumentReference user,
  String message,
  DateTime date,
  DocumentReference event,
  bool hasEvent,
}) =>
    serializers.toFirestore(
        NotificationsRecord.serializer,
        NotificationsRecord((n) => n
          ..user = user
          ..message = message
          ..date = date
          ..event = event
          ..hasEvent = hasEvent));
