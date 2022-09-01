class BaseAPI {


  static var api = base + "/api/v1";
  var customersPath = api + "/customers";
  static var authPath = base + "/auth";
  // Map<String, String> headers = {
  //   "Content-Type": "application/json; charset=UTF-8"
  // };

  static var headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2NTkxOTM2MzksImV4cCI6MTY1OTE5NzIzOSwibmJmIjoxNjU5MTkzNjM5LCJqdGkiOiJUQmVrV0RlRHVObjMzNjVvIiwic3ViIjoiMSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Ryxv8bIXBOnRS7BO45M1y-_e5rJBFjb_-o7QtEVw6eo'
  };
}
