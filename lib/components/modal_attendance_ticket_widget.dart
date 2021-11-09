import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_events_mark_attendance/profile_events_mark_attendance_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalAttendanceTicketWidget extends StatefulWidget {
  ModalAttendanceTicketWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ModalAttendanceTicketWidgetState createState() =>
      _ModalAttendanceTicketWidgetState();
}

class _ModalAttendanceTicketWidgetState
    extends State<ModalAttendanceTicketWidget> {
  TextEditingController textController;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Align(
        alignment: AlignmentDirectional(0, -0.55),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
          child: Container(
            width: double.infinity,
            height: 340,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF050211), FlutterFlowTheme.backgroundcolor1],
                stops: [0, 1],
                begin: AlignmentDirectional(0.37, -1),
                end: AlignmentDirectional(-0.37, 1),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProfileEventsMarkAttendanceWidget(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.secondaryColor,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 15),
                      child: Text(
                        'Enter the number (Nº) of ticket',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.subtitle2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 0),
                      child: TextFormField(
                        controller: textController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Nº ',
                          hintStyle: FlutterFlowTheme.bodyText1,
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
                          fillColor: FlutterFlowTheme.shadow,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                        ),
                        style: FlutterFlowTheme.bodyText1,
                        keyboardType: TextInputType.number,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Field is required';
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 5, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://picsum.photos/seed/100/600',
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fullname',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Nª 51635912',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.violet1,
                                        fontSize: 14,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.primaryColor,
                              FlutterFlowTheme.secondaryColor
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
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProfileEventsMarkAttendanceWidget(),
                                ),
                              );
                            } finally {
                              setState(() => _loadingButton = false);
                            }
                          },
                          text: 'Mark attendance',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40,
                            color: Color(0x003A2EE8),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Nunito',
                              color: Colors.white,
                              fontSize: 16,
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
