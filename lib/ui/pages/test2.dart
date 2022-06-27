part of 'pages.dart';

class Test2 extends StatelessWidget {
  // const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String userName, password;
    final _formKey = GlobalKey<FormState>();

    Widget inputUsername() {
      return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('E-Mail', style: blackFontStyle2),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Expanded(
                      child: TextFormField(
                    style: blackFontStyle3,
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email tidak boleh kosong';
                      }
                    },
                    decoration: InputDecoration.collapsed(
                      hintText: 'Masukkan E-Mail',
                      hintStyle: greyFontStyle,
                    ),
                  )),
                ),
              )
            ],
          ));
    }

    Widget inputPassword() {
      return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password', style: blackFontStyle2),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Expanded(
                      child: TextFormField(
                    style: blackFontStyle3,
                    obscureText: true,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                    },
                    decoration: InputDecoration.collapsed(
                      hintText: 'Masukkan Password',
                      hintStyle: greyFontStyle,
                    ),
                  )),
                ),
              )
            ],
          ));
    }

    Future<void> _validateInput() async {
      try {
        final response = await http.post(
            Uri.parse("http://47.74.214.215:82/mass-approval/api/login"),
            headers: {'Content-Type': 'application/json; charset=UTF-8'},
            body: jsonEncode({
              "email": userNameController.text,
              "password": passwordController.text,
              "device_id": "12345678",
              "companyID": "2",
            }));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'maaf anda tidak bisa mengakses modul tersebut!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    return Scaffold(
      body: Background(
        child: Container(
          // key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "LOGIN",
                  style: blackFontStyle1,
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 30),
              //TextFieldUsername
              inputUsername(),
              SizedBox(height: 30),
              //TextFieldPassword
              inputPassword(),
              SizedBox(height: 50),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    userName = userNameController.text;
                    password = passwordController.text;
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  textColor: thirdColor,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 100,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(
                            colors: [mainColor, secondaryColor])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
