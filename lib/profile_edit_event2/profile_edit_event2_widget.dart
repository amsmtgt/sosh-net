import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/modal_hostevent_guestlimit_widget.dart';
import '../components/modal_hostevent_privacy_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_edit_event/profile_edit_event_widget.dart';
import '../profile_event_detail/profile_event_detail_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileEditEvent2Widget extends StatefulWidget {
  ProfileEditEvent2Widget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ProfileEditEvent2WidgetState createState() =>
      _ProfileEditEvent2WidgetState();
}

class _ProfileEditEvent2WidgetState extends State<ProfileEditEvent2Widget> {
  bool _loadingButton = false;
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EventsRecord>(
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
        final profileEditEvent2EventsRecord = snapshot.data;
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          ProfileEditEventWidget(),
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
                    width: 400,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 20, 15, 10),
                            child: Text(
                              'Preferences',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.violet2,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return ModalHosteventPrivacyWidget(
                                      refEvent: widget.refEvent,
                                    );
                                  },
                                );
                              },
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
                                              Icons.lock_outlined,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Text(
                                              'Privacy',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            profileEditEvent2EventsRecord
                                                .privacyType,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet2,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: FlutterFlowTheme.violet1,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
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
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    7, 7, 0, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.addressCard,
                                              color: FlutterFlowTheme.blue1,
                                              size: 18,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 5),
                                        child: SwitchListTile(
                                          value: switchListTileValue ??=
                                              profileEditEvent2EventsRecord
                                                  .isPlus21,
                                          onChanged: (newValue) => setState(
                                              () => switchListTileValue =
                                                  newValue),
                                          title: Text(
                                            '+21',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Optional',
                                            style: FlutterFlowTheme.subtitle2
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet2,
                                              fontSize: 14,
                                            ),
                                          ),
                                          tileColor: FlutterFlowTheme.blue1,
                                          activeColor:
                                              FlutterFlowTheme.secondaryColor,
                                          activeTrackColor:
                                              FlutterFlowTheme.violet2,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
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
                            child: InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return ModalHosteventGuestlimitWidget(
                                      refEvent: widget.refEvent,
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 80,
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
                                              Icons.person_remove_outlined,
                                              color: FlutterFlowTheme.blue1,
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Guest limit',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  'Optional',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                    fontSize: 14,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            profileEditEvent2EventsRecord
                                                .guestCount
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.violet2,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: FlutterFlowTheme.violet1,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
                              final eventsUpdateData = createEventsRecordData(
                                isPlus21: switchListTileValue,
                              );
                              await widget.refEvent.update(eventsUpdateData);
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProfileEditEventWidget(),
                                ),
                              );
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
    );
  }
}
