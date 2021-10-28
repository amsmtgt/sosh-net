import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalOutercircleOptionsWidget extends StatefulWidget {
  ModalOutercircleOptionsWidget({
    Key key,
    this.userToAdd,
    this.refCircle,
    this.userName,
  }) : super(key: key);

  final DocumentReference userToAdd;
  final DocumentReference refCircle;
  final String userName;

  @override
  _ModalOutercircleOptionsWidgetState createState() =>
      _ModalOutercircleOptionsWidgetState();
}

class _ModalOutercircleOptionsWidgetState
    extends State<ModalOutercircleOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 1),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF050211), FlutterFlowTheme.backgroundcolor1],
            stops: [0, 1],
            begin: AlignmentDirectional(0.37, -1),
            end: AlignmentDirectional(-0.37, 1),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              child: Text(
                widget.userName,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Nunito',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.shadow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Add to my Inner Circle',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Nunito',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: InkWell(
                onTap: () async {
                  await widget.refCircle.delete();
                  final usersUpdateData = {
                    'countOuter': FieldValue.increment(-1),
                  };
                  await currentUserReference.update(usersUpdateData);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.shadow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Remove from my Outer Circle',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Nunito',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
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
    );
  }
}
