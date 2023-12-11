import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "extracuriculars" field.
  List<String>? _extracuriculars;
  List<String> get extracuriculars => _extracuriculars ?? const [];
  bool hasExtracuriculars() => _extracuriculars != null;

  // "work_experience" field.
  List<String>? _workExperience;
  List<String> get workExperience => _workExperience ?? const [];
  bool hasWorkExperience() => _workExperience != null;

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  bool hasSchool() => _school != null;

  // "professional_summary" field.
  String? _professionalSummary;
  String get professionalSummary => _professionalSummary ?? '';
  bool hasProfessionalSummary() => _professionalSummary != null;

  // "sports" field.
  List<String>? _sports;
  List<String> get sports => _sports ?? const [];
  bool hasSports() => _sports != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _grade = snapshotData['grade'] as String?;
    _extracuriculars = getDataList(snapshotData['extracuriculars']);
    _workExperience = getDataList(snapshotData['work_experience']);
    _school = snapshotData['school'] as String?;
    _professionalSummary = snapshotData['professional_summary'] as String?;
    _sports = getDataList(snapshotData['sports']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  DateTime? createdTime,
  String? grade,
  String? school,
  String? professionalSummary,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'created_time': createdTime,
      'grade': grade,
      'school': school,
      'professional_summary': professionalSummary,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.grade == e2?.grade &&
        listEquality.equals(e1?.extracuriculars, e2?.extracuriculars) &&
        listEquality.equals(e1?.workExperience, e2?.workExperience) &&
        e1?.school == e2?.school &&
        e1?.professionalSummary == e2?.professionalSummary &&
        listEquality.equals(e1?.sports, e2?.sports);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.firstName,
        e?.lastName,
        e?.createdTime,
        e?.grade,
        e?.extracuriculars,
        e?.workExperience,
        e?.school,
        e?.professionalSummary,
        e?.sports
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
