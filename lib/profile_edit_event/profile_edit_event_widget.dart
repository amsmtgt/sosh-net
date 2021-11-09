import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../profile_edit_event2/profile_edit_event2_widget.dart';
import '../profile_edit_event3/profile_edit_event3_widget.dart';
import '../profile_event_detail/profile_event_detail_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileEditEventWidget extends StatefulWidget {
  ProfileEditEventWidget({
    Key key,
    this.refEvent,
    this.imageURL,
  }) : super(key: key);

  final DocumentReference refEvent;
  final String imageURL;

  @override
  _ProfileEditEventWidgetState createState() => _ProfileEditEventWidgetState();
}

class _ProfileEditEventWidgetState extends State<ProfileEditEventWidget> {
  DateTime datePicked1;
  DateTime datePicked2;
  String uploadedFileUrl = '';
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: StreamBuilder<EventsRecord>(
        stream: EventsRecord.getDocument(widget.refEvent),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: SpinKitRing(
                  color: FlutterFlowTheme.primaryColor,
                  size: 50,
                ),
              ),
            );
          }
          final profileEditEventEventsRecord = snapshot.data;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.shadow,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.backgroundcolor1,
                    FlutterFlowTheme.backgroundcolor2
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0.37, -1),
                  end: AlignmentDirectional(-0.37, 1),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 44, 15, 0),
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 46,
                                  icon: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: FlutterFlowTheme.secondaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileEventDetailWidget(),
                                      ),
                                    );
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    'Edit event',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle2,
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileEventDetailWidget(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.violet1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x4D2431E4),
                                    FlutterFlowTheme.shadow
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      validateFileFormat(
                                          selectedMedia.storagePath, context)) {
                                    showUploadMessage(
                                        context, 'Uploading file...',
                                        showLoading: true);
                                    final downloadUrl = await uploadData(
                                        selectedMedia.storagePath,
                                        selectedMedia.bytes);
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrl != null) {
                                      setState(
                                          () => uploadedFileUrl = downloadUrl);
                                      showUploadMessage(context, 'Success!');
                                    } else {
                                      showUploadMessage(
                                          context, 'Failed to upload media');
                                      return;
                                    }
                                  }

                                  final eventsUpdateData =
                                      createEventsRecordData(
                                    photoUrl: uploadedFileUrl,
                                  );
                                  await widget.refEvent
                                      .update(eventsUpdateData);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      profileEditEventEventsRecord.photoUrl,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sosh-net-p4clfy/assets/q58fingksv52/event1.png',
                                    ),
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                              child: TextFormField(
                                controller: textController1 ??=
                                    TextEditingController(
                                  text: profileEditEventEventsRecord.name,
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: '[Tittle of the event]',
                                  hintStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.violet2,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF1A134D),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15, 20, 20, 20),
                                ),
                                style: FlutterFlowTheme.subtitle2,
                                maxLines: 3,
                                keyboardType: TextInputType.multiline,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                              child: Container(
                                width: double.infinity,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.shadow,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x6A2431E4),
                                                  Color(0x14080618)
                                                ],
                                                stops: [0, 1],
                                                begin: AlignmentDirectional(
                                                    -0.64, 1),
                                                end: AlignmentDirectional(
                                                    0.64, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Icon(
                                              Icons.text_snippet_outlined,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: TextFormField(
                                            controller: textController2 ??=
                                                TextEditingController(
                                              text: profileEditEventEventsRecord
                                                  .description,
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  '[Short description about my event]',
                                              hintStyle: FlutterFlowTheme
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme.violet2,
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                            ),
                                            maxLines: 3,
                                            keyboardType:
                                                TextInputType.multiline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                              child: Container(
                                width: double.infinity,
                                height: 105,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.shadow,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0x932431E4),
                                                    Color(0x14080618)
                                                  ],
                                                  stops: [0, 1],
                                                  begin: AlignmentDirectional(
                                                      -0.64, 1),
                                                  end: AlignmentDirectional(
                                                      0.64, -1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Icon(
                                                Icons.access_time,
                                                color: FlutterFlowTheme.blue1,
                                                size: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await DatePicker
                                                    .showDateTimePicker(
                                                  context,
                                                  showTitleActions: true,
                                                  onConfirm: (date) {
                                                    setState(() =>
                                                        datePicked1 = date);
                                                  },
                                                  currentTime:
                                                      profileEditEventEventsRecord
                                                          .startDateEvent,
                                                  minTime:
                                                      profileEditEventEventsRecord
                                                          .startDateEvent,
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        dateTimeFormat(
                                                            'MMMMEEEEd',
                                                            datePicked1),
                                                        'Thursday, November 4',
                                                      ),
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Nunito',
                                                        color: FlutterFlowTheme
                                                            .tertiaryColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    dateTimeFormat(
                                                        'jm', datePicked1),
                                                    style: FlutterFlowTheme
                                                        .bodyText1,
                                                  )
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await DatePicker
                                                    .showDateTimePicker(
                                                  context,
                                                  showTitleActions: true,
                                                  onConfirm: (date) {
                                                    setState(() =>
                                                        datePicked2 = date);
                                                  },
                                                  currentTime:
                                                      profileEditEventEventsRecord
                                                          .endDateEvent,
                                                  minTime:
                                                      profileEditEventEventsRecord
                                                          .endDateEvent,
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 20, 0, 0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                              'MMMMEEEEd',
                                                              datePicked2),
                                                          'Thursday, November 4',
                                                        ),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .violet2,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: Text(
                                                      dateTimeFormat(
                                                          'jm', datePicked2),
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Nunito',
                                                        color: FlutterFlowTheme
                                                            .violet2,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 35),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.shadow,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x6A2431E4),
                                                  Color(0x14080618)
                                                ],
                                                stops: [0, 1],
                                                begin: AlignmentDirectional(
                                                    -0.64, 1),
                                                end: AlignmentDirectional(
                                                    0.64, -1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Icon(
                                              Icons.location_on_outlined,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: TextFormField(
                                            controller: textController3 ??=
                                                TextEditingController(
                                              text: profileEditEventEventsRecord
                                                  .location,
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: '[Location]',
                                              hintStyle: FlutterFlowTheme
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                color: FlutterFlowTheme.violet2,
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                            ),
                                            keyboardType:
                                                TextInputType.streetAddress,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Text(
                                'Settings',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.white2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfileEditEvent2Widget(
                                                refEvent: widget.refEvent,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.shadow,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 15, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 35,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0x6A2431E4),
                                                            Color(0x14080618)
                                                          ],
                                                          stops: [0, 1],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  -0.64, 1),
                                                          end:
                                                              AlignmentDirectional(
                                                                  0.64, -1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(11),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Icon(
                                                        Icons.category_outlined,
                                                        color: FlutterFlowTheme
                                                            .blue1,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15, 0, 0, 0),
                                                      child: Text(
                                                        'Preferences',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                            .bodyText2
                                                            .override(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 5, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          color:
                                                              Color(0xFFA982FF),
                                                          size: 18,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 25),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProfileEditEvent3Widget(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.shadow,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 15, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 35,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0x6A2431E4),
                                                            Color(0x14080618)
                                                          ],
                                                          stops: [0, 1],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  -0.64, 1),
                                                          end:
                                                              AlignmentDirectional(
                                                                  0.64, -1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(11),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Icon(
                                                        Icons
                                                            .attach_money_sharp,
                                                        color: FlutterFlowTheme
                                                            .blue1,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15, 0, 0, 0),
                                                      child: Text(
                                                        'Cover Fee',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                            .bodyText2
                                                            .override(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 5, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          color:
                                                              Color(0xFFA982FF),
                                                          size: 18,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 25),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.primaryColor,
                                Color(0xFF844DFF)
                              ],
                              stops: [0, 1],
                              begin: AlignmentDirectional(1, -0.94),
                              end: AlignmentDirectional(-1, 0.94),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() => _loadingButton = true);
                              try {
                                if (!formKey.currentState.validate()) {
                                  return;
                                }
                                final eventsUpdateData = createEventsRecordData(
                                  name: textController1?.text ?? '',
                                  description: textController2?.text ?? '',
                                  location: textController3?.text ?? '',
                                  startDateEvent: datePicked1,
                                  endDateEvent: datePicked2,
                                );
                                await widget.refEvent.update(eventsUpdateData);
                              } finally {
                                setState(() => _loadingButton = false);
                              }
                            },
                            text: 'Save',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40,
                              color: Color(0x003A2EE8),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Nunito',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                            loading: _loadingButton,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
