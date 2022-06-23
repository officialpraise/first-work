import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingSimple extends StatefulWidget {
  JsonParsingSimpleState createState() => JsonParsingSimpleState();
}

class JsonParsingSimpleState extends State<JsonParsingSimple> {
  late Future data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=getData();
    data.then((value) =>
    print(value)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Json"),
      ),
 // body: FutureBuilder(
 //   future:getData(),
 //   builder: (BuildContext context,AsyncSnapshot snapshot){
 //     if(snapshot.hasData){
 //     return ListView.builder(
 //       itemCount: snapshot.data.length,
 //         itemBuilder:(context,int index){
 //         return Center(
 //           child: Container(
 //             width: MediaQuery.of(context).size.width,
 //             child: Column(
 //               children: [
 //                 Divider(thickness: 5.0,),
 //                 ListTile(
 //                   title: Text(snapshot.data[index]['title']),
 //                   subtitle: Text(snapshot.data[index]['body']),
 //                   leading: CircleAvatar(
 //                     radius: 23,
 //                   backgroundColor: Colors.black26,
 //                   child: Text(snapshot.data[index]['id'].toString()),
 //                   ),
 //                   trailing: Text(snapshot.data[index]['userId'].toString()),
 //                 )
 //               ],
 //             ),
 //           ),
 //         );
 //         }
 //     );
 //   }else{
 //      return CircularProgressIndicator();
 //     }}
 // ),
    );
  }
  Future getData() async{
    var data;
    String url="https://jsonplaceholder.typicode.com/posts";
    Network network=Network(url);
    data= network.fetchData();
    //print(data[0]["title"]);
     data.then((value)=> {
         print(value[0])
       });
    return data;
  }
}
class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    Response response = await get(Uri.parse(url));
       if(response.statusCode==200){
         print("$url");
         return json.decode(response.body);

       }else{
         print(response.statusCode);
       }
}
}