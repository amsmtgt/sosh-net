import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_tickets_record.g.dart';

abstract class EventTicketsRecord
    implements Built<EventTicketsRecord, EventTicketsRecordBuilder> {
  static Serializer<EventTicketsRecord> get serializer =>
      _$eventTicketsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Event')
  DocumentReference get event;

  @nullable
  @BuiltValueField(wireName: 'User')
  DocumentReference get user;

  @nullable
  int get noTickets;

  @nullable
  String get status;

  @nullable
  bool get approved;

  @nullable
  String get userId;

  @nullable
  bool get approvedByUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventTicketsRecordBuilder builder) => builder
    ..noTickets = 0
    ..status = ''
    ..approved = false
    ..userId = ''
    ..approvedByUser = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('EventTickets');

  static Stream<EventTicketsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventTicketsRecord._();
  factory EventTicketsRecord(
          [void Function(EventTicketsRecordBuilder) updates]) =
      _$EventTicketsRecord;

  static EventTicketsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventTicketsRecordData({
  DocumentReference event,
  DocumentReference user,
  int noTickets,
  String status,
  bool approved,
  String userId,
  bool approvedByUser,
}) =>
    serializers.toFirestore(
        EventTicketsRecord.serializer,
        EventTicketsRecord((e) => e
          ..event = event
          ..user = user
          ..noTickets = noTickets
          ..status = status
          ..approved = approved
          ..userId = userId
          ..approvedByUser = approvedByUser));
