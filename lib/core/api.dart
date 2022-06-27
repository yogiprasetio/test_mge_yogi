// part of 'apis.dart';

// class Network {
//   final String _url = 'http://47.74.214.215:82/mass-approval/api/login';
//   // 192.168.1.2 is my IP, change with your IP address
//   var token;

//   _getToken() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     token = jsonDecode(localStorage.getString('token'))['token'];
//   }

//   auth(data, apiURL) async {
//     var fullUrl = _url + apiURL;
//     return await http.post(fullUrl,
//         body: jsonEncode(data), headers: _setHeaders());
//   }

//   getData(apiURL) async {
//     var fullUrl = _url + apiURL;
//     await _getToken();
//     return await http.get(
//       fullUrl,
//       headers: _setHeaders(),
//     );
//   }

//   _setHeaders() => {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token',
//       };
// }
