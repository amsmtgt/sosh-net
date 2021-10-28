import '../components/modal_hostevent_privacy_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectprivacyModalWidget extends StatefulWidget {
  SelectprivacyModalWidget({
    Key key,
    this.refEvent,
  }) : super(key: key);

  final DocumentReference refEvent;

  @override
  _SelectprivacyModalWidgetState createState() =>
      _SelectprivacyModalWidgetState();
}

class _SelectprivacyModalWidgetState extends State<SelectprivacyModalWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Align(
        alignment: AlignmentDirectional(0, 1),
        child: ModalHosteventPrivacyWidget(
          refEvent: widget.refEvent,
        ),
      ),
    );
  }
}
