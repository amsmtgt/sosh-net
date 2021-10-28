import 'dart:math' as math;

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
