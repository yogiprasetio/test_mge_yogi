part of 'pages.dart';

class Page2_3_1 extends StatefulWidget {
  Page2_3_1({required this.id});
  final int id ;

  @override
  State<Page2_3_1> createState() => _Page2_3_1State();
}

class _Page2_3_1State extends State<Page2_3_1> {
  
  List _get=[];

  @override
  void initState() {
    super.initState();
    //in first time, this method will be executed
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/albums/1/photos?id=${widget.id}'
          ));

      // if response successful
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('data');
        _get = data;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: mainColor,
        ),
        SafeArea(
            child: Container(
          color: secondaryColor,
        )),
        Background(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    'Foto : ',
                    style: blackFontStyle1,
                  ),
                  Image.network(_get[0]['url']),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'ID : ',
                    style: blackFontStyle1,
                  ),
                  Text(
                    _get[0]['id'],
                    style: blackFontStyle2,
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Title : ',
                    style: blackFontStyle1,
                  ),
                  Text(
                    _get[0]['title'],
                    style: blackFontStyle2,
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'URL : ',
                    style: blackFontStyle1,
                  ),
                  Text(
                    _get[0]['url'],
                    style: blackFontStyle2,
                  )
                ],
              ),
            )
          ],
        ))
      ],
      
    );
  }
}
