import 'api_manager.dart';

Future<dynamic> getEventsPerUserCall({
  String userId = '',
}) {
  final body = '''
{
  "structuredQuery": {
    "select": {
      "fields": [
        {
          "fieldPath": "Event"
        },
        {
          "fieldPath": "approved"
        },
        {
          "fieldPath": "status"
        }
      ]
    },
    "where": {
      "compositeFilter": {
        "op": "AND",
        "filters": [
          {
            "fieldFilter": {
              "field": {
                "fieldPath": "User"
              },
              "op": "EQUAL",
              "value": {
                "referenceValue": "projects/sosh-net/databases/(default)/documents/Users/${userId}"
              }
            }
          },
          {
            "fieldFilter": {
              "field": {
                "fieldPath": "approved"
              },
              "op": "EQUAL",
              "value": {
                "booleanValue": true
              }
            }
          }
        ]
      }
    },
    "from": [
      {
        "collectionId": "EventTickets"
      }
    ]
  }
}''';
  return ApiManager.instance.makeApiCall(
    callName: 'GetEventsPerUser',
    apiUrl:
        'https://firestore.googleapis.com/v1beta1/projects/sosh-net/databases/(default)/documents:runQuery?key=AIzaSyAVBTE4YzWzk9LefgYXVikwSY_iQdEOVfU',
    callType: ApiCallType.POST,
    headers: {
      'Content-Type': 'application/json',
    },
    params: {
      'UserId': userId,
    },
    body: body,
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> getEventDataCall({
  String eventurl = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'GetEventData',
    apiUrl: 'https://firestore.googleapis.com/v1beta1/$eventurl',
    callType: ApiCallType.GET,
    headers: {
      'Content-Type': 'application/json',
    },
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> getUserAlreadyAddedCall({
  String userId = '',
  String followerId = '',
}) {
  final body = '''
{
  "structuredQuery": {
    "select": {
      "fields": [
        {
          "fieldPath": "FollowerId"
        },
        {
          "fieldPath": "UserId"
        }
      ]
    },
    "where": {
      "compositeFilter": {
        "op": "AND",
        "filters": [
          {
            "fieldFilter": {
              "field": {
                "fieldPath": "UserId"
              },
              "op": "EQUAL",
              "value": {
                "referenceValue": "projects/sosh-net/databases/(default)/documents/Users/${followerId}"
              }
            }
          },
          {
            "fieldFilter": {
              "field": {
                "fieldPath": "FollowerId"
              },
              "op": "EQUAL",
              "value": {
                "referenceValue": "projects/sosh-net/databases/(default)/documents/Users/${userId}"
              }
            }
          }
        ]
      }
    },
    "from": [
      {
        "collectionId": "Circles"
      }
    ]
  }
}''';
  return ApiManager.instance.makeApiCall(
    callName: 'GetUserAlreadyAdded',
    apiUrl:
        'https://firestore.googleapis.com/v1beta1/projects/sosh-net/databases/(default)/documents:runQuery?key=AIzaSyAVBTE4YzWzk9LefgYXVikwSY_iQdEOVfU',
    callType: ApiCallType.POST,
    headers: {
      'Content-Type': 'application/json',
    },
    params: {
      'userId': userId,
      'followerId': followerId,
    },
    body: body,
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}
