// resourceManager

//#region JSON Models

// Borrowed bits from Google Calendar's data structures
interface event {
  "id": string,
  "created": number, // unix
  "summary": string,
  "description": string,
  "start": number, // unix
  "end": number, // unix
  "attendees": [
    {
      "userId": number,
      "displayName": string
    }
  ],
};

interface user {
  "id": string,
  "email": string,
  "displayName": string,
  "responseStatus": string,
  "comment": string,
};

//#endregion JSON Models

//#region Dummy data to be fed to mocky.io

/** One event has both people attending
 * and each person has an event for themselves
 */
const events = [
  {
    "id": 1,
    "created": 1606831000,
    "summary": "",
    "description": "",
    "start": 1606831200, // unix for 01-Dec-2020 14:00:00 UTC
    "end": 1606838400, // unix for 01-Dec-2020 16:00:00 UTC
    "attendees": [
      { "userId": 1 },
      { "userId": 2 }
    ]
  },
  {
    "id": 2,
    "created": 1606831000,
    "summary": "",
    "description": "",
    "start": 1606831200, // unix for 01-Dec-2020 14:00:00 UTC
    "end": 1606838400, // unix for 01-Dec-2020 16:00:00 UTC
    "attendees": [
      { "userId": 1 }
    ]
  }, {
    "id": 3,
    "created": 1606831000,
    "summary": "",
    "description": "",
    "start": 1606831200, // unix for 01-Dec-2020 14:00:00 UTC
    "end": 1606838400, // unix for 01-Dec-2020 16:00:00 UTC
    "attendees": [
      { "userId": 2 }
    ]
  }
];

const users = [
  {
    "id": 1,
    "email": "example@example.com",
    "displayName": "John Doe",
    "responseStatus": null,
    "comment": null,
  },
  {
    "id": 2,
    "email": "example@example.com",
    "displayName": "Sam Smith",
    "responseStatus": null,
    "comment": null,
  }
];

//#region