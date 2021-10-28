import '../components/modal_confirmation_ticket_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalRequestEntryWidget extends StatefulWidget {
  ModalRequestEntryWidget({Key key}) : super(key: key);

  @override
  _ModalRequestEntryWidgetState createState() =>
      _ModalRequestEntryWidgetState();
}

class _ModalRequestEntryWidgetState extends State<ModalRequestEntryWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: ModalConfirmationTicketWidget(),
        ),
      ),
    );
  }
}
