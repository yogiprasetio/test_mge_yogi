part of 'pages.dart';

class Page2_3 extends StatefulWidget {
  Page2_3({Key? key}) : super(key: key);

  @override
  State<Page2_3> createState() => _Page2_3State();
}

class _Page2_3State extends State<Page2_3> {
  
  List _get = [];

  final _lightColors = [
            mainColor,
            thirdColor,
            secondaryColor,
            Colors.pinkAccent.shade100,
          ];

  @override
  void initState(){
    super.initState();
    _getData();
  }

  Future _getData() async {
    try{
      final response = await http.get(Uri.parse(
        // "http://192.168.1.54/flutter/list.php"
        "https://jsonplaceholder.typicode.com/albums/1/photos"
      ));
      if (response.statusCode == 200){
        final data = jsonDecode(response.body); //['data']
        setState(() {
          _get = data;
          print(data);
        });
      }
    } catch (e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: 
            Colors.orange.shade200,
      body: _get.length != 0
                  //we use masonry grid to make masonry card style
                  ? MasonryGridView.count(
                      crossAxisCount: 2,
                      itemCount: _get.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                //routing into edit page
                                //we pass the id note
                                MaterialPageRoute(builder: (context) => Page2_3_1(id: _get[index]['id'],)));
                          },
                          child: Card(
                            //make random color to eveery card
                            color: _lightColors[index % _lightColors.length],
                            child: Container(
                              //make 2 different height
                              constraints:
                              BoxConstraints(minHeight: (index % 2 + 1) * 85),
                                  // BoxConstraints(minHeight: (index % 1 + 4) * 85),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network('${_get[index]['thumbnailUrl']}'),
                                  SizedBox(width: 2),
                                  Text(
                                    'Title = ${_get[index]['title']}',
                                    // '${_get[index]['nama']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        "No Data Available",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: mainColor,
                child: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      //routing into home page
                      MaterialPageRoute(builder: (context) => PageOne()));
                },
              ),
     );
  }
}
  