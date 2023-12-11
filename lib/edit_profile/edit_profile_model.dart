import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for grade widget.
  FocusNode? gradeFocusNode;
  TextEditingController? gradeController;
  String? Function(BuildContext, String?)? gradeControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for school widget.
  FocusNode? schoolFocusNode;
  TextEditingController? schoolController;
  String? Function(BuildContext, String?)? schoolControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioController;
  String? Function(BuildContext, String?)? myBioControllerValidator;
  // State field(s) for workExperience widget.
  FocusNode? workExperienceFocusNode;
  TextEditingController? workExperienceController;
  String? Function(BuildContext, String?)? workExperienceControllerValidator;
  // State field(s) for extracurriculars widget.
  FocusNode? extracurricularsFocusNode;
  TextEditingController? extracurricularsController;
  String? Function(BuildContext, String?)? extracurricularsControllerValidator;
  // State field(s) for sports widget.
  FocusNode? sportsFocusNode;
  TextEditingController? sportsController;
  String? Function(BuildContext, String?)? sportsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    gradeFocusNode?.dispose();
    gradeController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    schoolFocusNode?.dispose();
    schoolController?.dispose();

    myBioFocusNode?.dispose();
    myBioController?.dispose();

    workExperienceFocusNode?.dispose();
    workExperienceController?.dispose();

    extracurricularsFocusNode?.dispose();
    extracurricularsController?.dispose();

    sportsFocusNode?.dispose();
    sportsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
