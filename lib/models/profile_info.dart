//TODO: update this model once API endpoints is made.
import 'dart:convert';

class ProfileInfo {
  final String firstName;
  final String lastName;

  ProfileInfo(this.firstName, this.lastName);

  ProfileInfo.fromJson(Map<String, dynamic> data)
      : firstName = data['firstName'],
        lastName = data['lastName'];

  //TODO: from endpoint once

  static String getFirstLetter() {
    var jsonData = '{ "firstName" : "Brian", "lastName" : "Koo"  }';
    var parsedJson = json.decode(jsonData); //Map<String, dynamic>
    var profile = ProfileInfo.fromJson(parsedJson);
    print('user ${profile.firstName} ${profile.lastName}');
    print('${profile.firstName}'.substring(0, 1));
    return '${profile.firstName}'.substring(0, 1);
  }
}
