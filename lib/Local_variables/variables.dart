import 'dart:io';
import 'dart:typed_data';

int ind = 0;
int ind2 = 0;
String? selectedValue;
List<String> selectCategorys = ['VIP', 'S VIP'];
List<String> lastDays = [
  'Today',
  'Weekly',
  'Half Month',
  'Monthly',
  'Last Month',
  'All Over'
];
List<String> adminList = ['Admin'];
List<String> adsList = ['All','Manual','Country List'];
List<String> giftCategory = ['Popular','Lucky','Event Luxury','Rank','VIP'];
List<String> guardianList = ['Luxury', 'Royal', 'King'];
List<String> userTypes = [
  'All',
  'New',
  'Host',
  'Sender',
  'Host Agency',
  'Top Up Agency'
];
List<String> selectDays = ['7', '15', '30'];
List<String> selectHour = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12'
];
File? _imageFile2;
Uint8List profileImage = Uint8List(8);
