import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get location;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'privacy_type')
  String get privacyType;

  @nullable
  @BuiltValueField(wireName: 'location_event')
  LatLng get locationEvent;

  @nullable
  DocumentReference get owner;

  @nullable
  @BuiltValueField(wireName: 'start_date_event')
  DateTime get startDateEvent;

  @nullable
  @BuiltValueField(wireName: 'end_date_event')
  DateTime get endDateEvent;

  @nullable
  @BuiltValueField(wireName: 'guest_count')
  int get guestCount;

  @nullable
  bool get isPlus21;

  @nullable
  bool get isFree;

  @nullable
  bool get isPayed;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: 'owner_name')
  String get ownerName;

  @nullable
  int get grantedTickets;

  @nullable
  String get eventCode;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..name = ''
    ..photoUrl = ''
    ..location = ''
    ..description = ''
    ..privacyType = ''
    ..guestCount = 0
    ..isPlus21 = false
    ..isFree = false
    ..isPayed = false
    ..price = 0.0
    ..ownerName = ''
    ..grantedTickets = 0
    ..eventCode = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventsRecordData({
  String name,
  String photoUrl,
  String location,
  String description,
  String privacyType,
  LatLng locationEvent,
  DocumentReference owner,
  DateTime startDateEvent,
  DateTime endDateEvent,
  int guestCount,
  bool isPlus21,
  bool isFree,
  bool isPayed,
  double price,
  String ownerName,
  int grantedTickets,
  String eventCode,
}) =>
    serializers.toFirestore(
        EventsRecord.serializer,
        EventsRecord((e) => e
          ..name = name
          ..photoUrl = photoUrl
          ..location = location
          ..description = description
          ..privacyType = privacyType
          ..locationEvent = locationEvent
          ..owner = owner
          ..startDateEvent = startDateEvent
          ..endDateEvent = endDateEvent
          ..guestCount = guestCount
          ..isPlus21 = isPlus21
          ..isFree = isFree
          ..isPayed = isPayed
          ..price = price
          ..ownerName = ownerName
          ..grantedTickets = grantedTickets
          ..eventCode = eventCode));
