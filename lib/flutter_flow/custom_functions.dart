import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import '../../auth/auth_util.dart';

String hostedBy(String text) {
  // Add your function code here!
  //return 'Hosted by ' + text;
  return text;
}

String formatDate(DateTime currentTime) {
  // Add your function code here!
  DateFormat formatter = DateFormat('MMMMEEEEd Hm');
  return formatter.format(currentTime);
}

String formatEventCode() {
  // Add your function code here!
  DateFormat formatter = DateFormat('yyDHms');
  DateTime now = new DateTime.now();
  return formatter.format(now);
}

String getPrice(
  bool isFree,
  bool isPayed,
  double price,
) {
  // Add your function code here!
  if (isPayed && price != null) {
    return '' + price.toString();
  } else {
    return 'Cover Free';
  }
}

bool getInnerOuter(String option) {
  // Add your function code here!
  if (option == 'Inner Circle') {
    return true;
  } else {
    return false;
  }
}

bool getRequests(int countRequest) {
  // Add your function code here!
  if (countRequest > 0) {
    return true;
  } else {
    return false;
  }
}

bool hasText(String field) {
  // Add your function code here!
  if (field == null) {
    return false;
  } else {
    return field.isEmpty;
  }
}

bool getOuterInner(String option) {
  // Add your function code here!
  if (option == 'Outer Circle') {
    return true;
  } else {
    return false;
  }
}

bool eventIsPublic(String type) {
  // Add your function code here!
  if (type == 'Public') {
    return true;
  } else {
    return false;
  }
}

bool eventIsPrivate(String type) {
  // Add your function code here!
  if (type != 'Public') {
    return true;
  } else {
    return false;
  }
}

bool hasCommonEvents(
  dynamic eventsConnectedUser,
  dynamic eventsAddedUser,
) {
  if (eventsConnectedUser == null || eventsAddedUser == null) {
    return false;
  } else {
    try {
      for (dynamic element in eventsConnectedUser) {
        String currentEvent =
            element['document']['fields']['Event']['referenceValue'];
        print(currentEvent);
        for (dynamic element2 in eventsAddedUser) {
          String currentEvent2 =
              element2['document']['fields']['Event']['referenceValue'];
          print(currentEvent2);
          if (currentEvent2 == currentEvent) {
            return true;
          }
        }
      }
    } catch (e) {}
  }
  return false;
}

bool getUserAlreadyAdded(dynamic queryResult) {
  if (queryResult == null) {
    return true;
  } else {
    try {
      for (dynamic element in queryResult) {
        String current =
            element['document']['fields']['FollowerId']['referenceValue'];
        if (current != '') {
          return false;
        }
      }
    } catch (e) {
      return true;
    }
  }
  return true;
}

String getCommonEventsName(
  dynamic eventsConnectedUser,
  dynamic eventsAddedUser,
) {
  if (eventsConnectedUser == null || eventsAddedUser == null) {
    return '';
  } else {
    try {
      for (dynamic element in eventsConnectedUser) {
        String currentEvent =
            element['document']['fields']['Event']['referenceValue'];
        print(currentEvent);
        for (dynamic element2 in eventsAddedUser) {
          String currentEvent2 =
              element2['document']['fields']['Event']['referenceValue'];
          print(currentEvent2);
          if (currentEvent2 == currentEvent) {
            return currentEvent2;
            ;
          }
        }
      }
    } catch (e) {}
  }
  return '';
}

bool showRecordUser(
  String displayNameSearch,
  String displayNameRecord,
) {
  // Add your function code here!  string.contains('Alls')
  if (displayNameSearch == null) {
    displayNameSearch = '';
  }
  if (displayNameRecord.contains(displayNameSearch)) {
    return true;
  } else {
    return false;
  }
}

bool showSwitch(
  bool isFree,
  bool isPay,
) {
  // Add your function code here!
  if (isFree && !isPay) {
    return true;
  } else {
    return false;
  }
}

String randomID() {
  // Add your function code here!
  var CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var autoId = '';
  var rng = new math.Random();
  for (var i = 0; i < 28; i++) {
    autoId += CHARS[(rng.nextInt(62)).floor()];
    print(autoId);
  }
  return autoId;
}

String uniqueCodeEvent(String eventName) {
  // Add your function code here!
  var CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var autoId = '';
  var rng = new math.Random();
  for (var i = 0; i < 8; i++) {
    autoId += CHARS[(rng.nextInt(62)).floor()];
    print(autoId);
  }
  return 'https://quickchart.io/qr?text=' +
      eventName +
      '_' +
      autoId +
      '&margin=2&size=300';
}

dynamic createInviteBody(dynamic innerCircleUsers) {
  // Add your function code here!
  dynamic test;

  return test;
}

String getUniqueCodeImage(
  String eventName,
  String eventCode,
) {
  // Add your function code here!
  //https://quickchart.io/qr?text=Hello%20world_2020202&margin=2&size=300
  String result = eventCode.replaceAll("https://quickchart.io/qr?text=", "");
  //Hello%20world_2020202&margin=2&size=300
  result = result.replaceAll("&margin=2&size=300", "");
  //Hello%20world_2020202
  result = result.replaceAll("%20", " ");
  //Hello world_2020202
  result = result.replaceAll(eventName + '_', "");
  //2020202
  return result;
}
