import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../host_event2/host_event2_widget.dart';
import '../host_event_invitations/host_event_invitations_widget.dart';
import '../main.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HostEvent3Widget extends StatefulWidget {
  HostEvent3Widget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _HostEvent3WidgetState createState() => _HostEvent3WidgetState();
}

class _HostEvent3WidgetState extends State<HostEvent3Widget> {
  TextEditingController textController;
  bool switchListTile2Value;
  bool switchListTile1Value;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
        final hostEvent3EventsRecord = snapshot.data;
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
                                      builder: (context) => HostEvent2Widget(),
                                    ),
                                  );
                                },
                              ),
                              Expanded(
                                child: Text(
                                  'Host event',
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
                                          NavBarPage(initialPage: 'HOME'),
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 20, 15, 10),
                            child: Text(
                              'Cover fee',
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
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: SwitchListTile(
                                      value: switchListTile1Value ??= true,
                                      onChanged: (newValue) => setState(() =>
                                          switchListTile1Value = newValue),
                                      title: Text(
                                        'Free',
                                        style:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Nunito',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      activeColor:
                                          FlutterFlowTheme.secondaryColor,
                                      activeTrackColor:
                                          FlutterFlowTheme.violet2,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.shadow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            SwitchListTile(
                                              value: switchListTile2Value ??=
                                                  false,
                                              onChanged: (newValue) => setState(
                                                  () => switchListTile2Value =
                                                      newValue),
                                              title: Text(
                                                'Pay',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              tileColor: Color(0xFFF5F5F5),
                                              activeColor: FlutterFlowTheme
                                                  .secondaryColor,
                                              activeTrackColor:
                                                  FlutterFlowTheme.violet2,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .trailing,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 5, 15, 0),
                                              child: TextFormField(
                                                controller: textController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Enter price...',
                                                  hintStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme
                                                        .violet2,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  filled: true,
                                                  fillColor: FlutterFlowTheme
                                                      .backgroundcolor2,
                                                ),
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Nunito',
                                                  color:
                                                      FlutterFlowTheme.violet2,
                                                ),
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 5, 0, 0),
                                    child: Text(
                                      'Payment on app',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.violet1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
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
                    Visibility(
                      visible: (functions.showSwitch(
                              switchListTile1Value, switchListTile2Value)) ==
                          (true),
                      child: Padding(
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
                              setState(() => _loadingButton1 = true);
                              try {
                                if (switchListTile1Value) {
                                  final eventsUpdateData =
                                      createEventsRecordData(
                                    isFree: true,
                                  );
                                  await widget.refEvent
                                      .update(eventsUpdateData);
                                }
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HostEventInvitationsWidget(
                                      refEvent: widget.refEvent,
                                    ),
                                  ),
                                );
                              } finally {
                                setState(() => _loadingButton1 = false);
                              }
                            },
                            text: 'Create Free event',
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
                            loading: _loadingButton1,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: (functions.showSwitch(
                              switchListTile2Value, switchListTile1Value)) ==
                          (true),
                      child: Padding(
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
                              setState(() => _loadingButton2 = true);
                              try {
                                if (switchListTile1Value) {
                                  final eventsUpdateData =
                                      createEventsRecordData(
                                    isPayed: true,
                                    price: double.parse(textController.text),
                                  );
                                  await widget.refEvent
                                      .update(eventsUpdateData);
                                }
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HostEventInvitationsWidget(
                                      refEvent: widget.refEvent,
                                    ),
                                  ),
                                );
                              } finally {
                                setState(() => _loadingButton2 = false);
                              }
                            },
                            text: 'Create Pay event',
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
                            loading: _loadingButton2,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.blue1,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.blue1,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.blue1,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: const CircleBorder(),
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.blue1,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.blue1,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
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
