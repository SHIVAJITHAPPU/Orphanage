import 'package:flutter/material.dart';
import 'package:image_example/ORPHANAGE/userporo2.dart';

import 'AUTH/signUp1.dart';
import 'AUTH/signUp2.dart';
import 'AUTH/userSelect.dart';
import 'INDIVITUAL/IndChildDtlsFrm.dart';
import 'INDIVITUAL/IndEditProfile.dart';
import 'INDIVITUAL/btm_individual.dart';
import 'INDIVITUAL/IndImageEditer.dart';
import 'INDIVITUAL/IndSettings.dart';
import 'INDIVITUAL/Indivitualaaprofiles.dart';
import 'INDIVITUAL/Loginpgs2.dart';
import 'INDIVITUAL/Register.dart';
import 'INDIVITUAL/explore.dart';
import 'INDIVITUAL/home.dart';
import 'INDIVITUAL/indChildDtls.dart';
import 'INDIVITUAL/logaMain1.dart';
import 'INDIVITUAL/loginpages3.dart';
import 'INDIVITUAL/orphanageprofile.dart';
import 'INDIVITUAL/supportinNotification.dart';
import 'INDIVITUAL/supproting.dart';
import 'INDIVITUAL/tabBar.dart';
import 'ORGANAIZATION/ORG1.dart';
import 'ORGANAIZATION/ORG10.dart';
import 'ORGANAIZATION/ORG11.dart';
import 'ORGANAIZATION/ORG12.dart';
import 'ORGANAIZATION/ORG13.dart';
import 'ORGANAIZATION/ORG14.dart';
import 'ORGANAIZATION/ORG15.dart';
import 'ORGANAIZATION/ORG16.dart';
import 'ORGANAIZATION/ORG17.dart';
import 'ORGANAIZATION/ORG18.dart';
import 'ORGANAIZATION/ORG2.dart';
import 'ORGANAIZATION/ORG3.dart';
import 'ORGANAIZATION/ORG4.dart';
import 'ORGANAIZATION/ORG5.dart';
import 'ORGANAIZATION/ORG6.dart';
import 'ORGANAIZATION/ORG7.dart';
import 'ORGANAIZATION/ORG8.dart';
import 'ORGANAIZATION/ORG9.dart';
import 'ORGANAIZATION/btm_organization.dart';
import 'ORPHANAGE/ Notification/notification1.dart';
import 'ORPHANAGE/ Notification/notification2.dart';
import 'ORPHANAGE/ Notification/notification4.dart';
import 'ORPHANAGE/ Notification/organizationprf.dart';
import 'ORPHANAGE/PROFILEPAGES/EditProfile.dart';
import 'ORPHANAGE/HOMEBOTTEM/btm_orphanage.dart';
import 'ORPHANAGE/PROFILEPAGES/home.dart';
import 'ORPHANAGE/PROFILEPAGES/homeProf.dart';
import 'ORPHANAGE/PROFILEPAGES/orphanProfEdit.dart';
import 'ORPHANAGE/adddetails.dart';
import 'ORPHANAGE/childAddDtls.dart';
import 'ORPHANAGE/childdetails1.dart';
import 'ORPHANAGE/childdetails2.dart';
import 'ORPHANAGE/childsave.dart';
import 'ORPHANAGE/donateReqst.dart';
import 'ORPHANAGE/detailpage3.dart';
import 'ORPHANAGE/education.dart';
import 'ORPHANAGE/helpRequest_custom.dart';
import 'ORPHANAGE/foodnot1.dart';
import 'ORPHANAGE/fund.dart';
import 'ORPHANAGE/login.dart';
import 'ORPHANAGE/loginpage2.dart';
import 'ORPHANAGE/profile4.dart';
import 'ORPHANAGE/settingspage.dart';
import 'exampleimage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserSelect(),
    );
  }
}
