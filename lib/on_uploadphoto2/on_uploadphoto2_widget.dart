import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../on_find_friends/on_find_friends_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OnUploadphoto2Widget extends StatefulWidget {
  OnUploadphoto2Widget({
    Key key,
    this.photourl,
  }) : super(key: key);

  final String photourl;

  @override
  _OnUploadphoto2WidgetState createState() => _OnUploadphoto2WidgetState();
}

class _OnUploadphoto2WidgetState extends State<OnUploadphoto2Widget> {
  String uploadedFileUrl = '';
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      child: StreamBuilder<List<UsersRecord>>(
        stream: queryUsersRecord(
          queryBuilder: (usersRecord) =>
              usersRecord.where('uid', isEqualTo: currentUserUid),
          singleRecord: true,
        ),
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
          List<UsersRecord> onUploadphoto2UsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final onUploadphoto2UsersRecord =
              onUploadphoto2UsersRecordList.isNotEmpty
                  ? onUploadphoto2UsersRecordList.first
                  : null;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.shadow,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Sin_titulo-1-02.jpg',
                  ).image,
                ),
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.backgroundcolor2,
                    Color(0xFF1F2BAA)
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(1, 0.98),
                  end: AlignmentDirectional(-1, -0.98),
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 20,
                                  height: 11,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.blue1,
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.blue1,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2,
                                shape: const CircleBorder(),
                                child: Container(
                                  width: 11,
                                  height: 11,
                                  decoration: BoxDecoration(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2,
                                shape: const CircleBorder(),
                                child: Container(
                                  width: 11,
                                  height: 11,
                                  decoration: BoxDecoration(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2,
                                shape: const CircleBorder(),
                                child: Container(
                                  width: 11,
                                  height: 11,
                                  decoration: BoxDecoration(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              'Profile picture was upload',
                              style: FlutterFlowTheme.subtitle1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Container(
                              height: 320,
                              child: Stack(
                                alignment: AlignmentDirectional(
                                    0.10000000000000009, 0),
                                children: [
                                  Image.asset(
                                    'assets/images/photo.png',
                                    width: 350,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    width: 600,
                                    height: 600,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Container(
                                      width: 220,
                                      height: 220,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          widget.photourl,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sosh-net-p4clfy/assets/qo5470b7xzxo/logan-weaver-Isle-8YpbIQ-unsplash.jpg',
                                        ),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() => _loadingButton1 = true);
                              try {
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
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OnUploadphoto2Widget(
                                      photourl: uploadedFileUrl,
                                    ),
                                  ),
                                  (r) => false,
                                );
                              } finally {
                                setState(() => _loadingButton1 = false);
                              }
                            },
                            text: 'Change photo',
                            options: FFButtonOptions(
                              width: 250,
                              height: 44,
                              color: Color(0x00CEB8FF),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.violet2,
                                fontSize: 16,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                            loading: _loadingButton1,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(50, 35, 50, 0),
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
                                  setState(() => _loadingButton2 = true);
                                  try {
                                    final usersUpdateData =
                                        createUsersRecordData(
                                      photoUrl: widget.photourl,
                                      countInner: 0,
                                      countOuter: 0,
                                      countRequest: 0,
                                    );
                                    await onUploadphoto2UsersRecord.reference
                                        .update(usersUpdateData);
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OnFindFriendsWidget(),
                                      ),
                                    );
                                  } finally {
                                    setState(() => _loadingButton2 = false);
                                  }
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40,
                                  color: Color(0x003A2EE8),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
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
                                loading: _loadingButton2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(),
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
