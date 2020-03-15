import 'package:blood_bank/models/blood_center.dart';
import 'package:flutter/material.dart';

class BloodBanks with ChangeNotifier{
  List<BloodCenter> _bloodCenters=[];

  List<BloodCenter> get bloodCenter {
    return [..._bloodCenters];
  } 
  
}