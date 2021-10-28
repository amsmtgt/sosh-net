import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalHosteventGuestlimitWidget extends StatefulWidget {
  ModalHosteventGuestlimitWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ModalHosteventGuestlimitWidgetState createState() =>
      _ModalHosteventGuestlimitWidgetState();
}

class _ModalHosteventGuestlimitWidgetState
    extends State<ModalHosteventGuestlimitWidget> {
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
            height: 320,
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
                              Navigator.pop(context);
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
                        'Maximum number of guests',
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
                          hintText: '0 max.',
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
                      padding: EdgeInsetsDirectional.fromSTEB(15, 50, 15, 0),
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
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              final eventsUpdateData = createEventsRecordData(
                                guestCount: int.parse(textController.text),
                              );
                              await widget.refEvent.update(eventsUpdateData);
                              Navigator.pop(context);
                            } finally {
                              setState(() => _loadingButton = false);
                            }
                          },
                          text: 'Done',
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
