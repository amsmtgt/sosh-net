import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'incident_record.g.dart';

abstract class IncidentRecord
    implements Built<IncidentRecord, IncidentRecordBuilder> {
  static Serializer<IncidentRecord> get serializer =>
      _$incidentRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Event')
  DocumentReference get event;

  @nullable
  String get type;

  @nullable
  String get comment;

  @nullable
  DateTime get dateReported;

  @nullable
  String get status;

  @nullable
  String get reportedBy;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IncidentRecordBuilder builder) => builder
    ..type = ''
    ..comment = ''
    ..status = ''
    ..reportedBy = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Incident');

  static Stream<IncidentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  IncidentRecord._();
  factory IncidentRecord([void Function(IncidentRecordBuilder) updates]) =
      _$IncidentRecord;

  static IncidentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIncidentRecordData({
  DocumentReference event,
  String type,
  String comment,
  DateTime dateReported,
  String status,
  String reportedBy,
}) =>
    serializers.toFirestore(
        IncidentRecord.serializer,
        IncidentRecord((i) => i
          ..event = event
          ..type = type
          ..comment = comment
          ..dateReported = dateReported
          ..status = status
          ..reportedBy = reportedBy));
