import 'dart:io';
import 'dart:typed_data';

int ind = 0;
int ind2 = 0;
String? selectedValue;
List<Map<String, dynamic>> agencyList = [
  {
    'id': '1',
    'profile': 'assets/icons/dp1.png',
    'text': 'Gina Rodriquex',
    'img': 'assets/icons/m1.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
  {
    'id': '2',
    'profile': 'assets/icons/dp2.png',
    'text': 'Javier Robertson',
    'img': 'assets/icons/m2.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
  {
    'id': '3',
    'profile': 'assets/icons/dp3.png',
    'text': 'Scarlett',
    'img': 'assets/icons/m3.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
  {
    'id': '4',
    'profile': 'assets/icons/dp4.png',
    'text': 'Mary Reid',
    'img': 'assets/icons/m4.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
  {
    'id': '5',
    'profile': 'assets/icons/dp5.png',
    'text': 'Ryan Horton',
    'img': 'assets/icons/m5.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
  {
    'id': '6',
    'profile': 'assets/icons/dp6.png',
    'text': 'Bryan Gibson',
    'img': 'assets/icons/m6.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
  {
    'id': '7',
    'profile': 'assets/icons/dp7.png',
    'text': 'Shakib Islam',
    'img': 'assets/icons/m7.png',
    'img2': 'assets/icons/kohenoor.png',
    'reward': '12.75 M'
  },
];
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
List<String> adsList = ['All', 'Manual', 'Country List'];
List<String> giftCategory = ['Popular', 'Lucky', 'Event Luxury', 'Rank', 'VIP'];
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
