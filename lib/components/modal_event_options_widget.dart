import '../components/modal_cancel_event_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalEventOptionsWidget extends StatefulWidget {
  ModalEventOptionsWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _ModalEventOptionsWidgetState createState() =>
      _ModalEventOptionsWidgetState();
}

class _ModalEventOptionsWidgetState extends State<ModalEventOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 1),
      child: Container(
        width: double.infinity,
        height: 650,
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
              padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
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
              padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 0),
              child: Container(
                width: double.infinity,
                height: 46,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.shadow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x6A2431E4), Color(0x14080618)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(-0.64, 1),
                              end: AlignmentDirectional(0.64, -1),
                            ),
                            borderRadius: BorderRadius.circular(11),
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.edit_sharp,
                            color: FlutterFlowTheme.blue1,
                            size: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                              child: Text(
                                'Edit event',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 8, 15, 0),
              child: Container(
                width: double.infinity,
                height: 46,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.shadow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  child: InkWell(
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Color(0x4D080618),
                        barrierColor: Color(0x4D080618),
                        context: context,
                        builder: (context) {
                          return ModalCancelEventWidget();
                        },
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0x6A2431E4), Color(0x14080618)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(-0.64, 1),
                                end: AlignmentDirectional(0.64, -1),
                              ),
                              borderRadius: BorderRadius.circular(11),
                              shape: BoxShape.rectangle,
                            ),
                            child: Icon(
                              Icons.cancel_outlined,
                              color: FlutterFlowTheme.blue1,
                              size: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                                child: Text(
                                  'Cancel event',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 8, 15, 0),
              child: Container(
                width: double.infinity,
                height: 46,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.shadow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x6A2431E4), Color(0x14080618)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(-0.64, 1),
                              end: AlignmentDirectional(0.64, -1),
                            ),
                            borderRadius: BorderRadius.circular(11),
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.share_sharp,
                            color: FlutterFlowTheme.blue1,
                            size: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                              child: Text(
                                'Share link',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
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
            )
          ],
        ),
      ),
    );
  }
}
