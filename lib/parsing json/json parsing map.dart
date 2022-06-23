import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


import 'package:untitled/model/post.dart';

class JsonParsingMap extends StatefulWidget{
  JsonParsingMapState createState()=>JsonParsingMapState();
}
class JsonParsingMapState extends State<JsonParsingMap>{
late Future<PostList>data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
Network network=Network("https://jsonplaceholder.typicode.com/posts");
data=network.loadPost();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PODO"),
      ),
      body:Center(
        child: Container(
          child: FutureBuilder(
             future:data,
            builder: (BuildContext context,AsyncSnapshot<PostList>snapshot){
               List<Post>allPosts;
               if(snapshot.hasData){
                 allPosts=snapshot.data!.posts;
                 return ListView.builder(
                   itemCount:allPosts.length ,
                     itemBuilder: (context,int index){
                     return Card(
                       child: ListTile(
                      title: Text("${allPosts[index].title}"),
                         leading: CircleAvatar(
                           backgroundColor: Colors.blue,
                           child: Text("${allPosts[index].id}"),
                         ),
                       trailing:CircleAvatar(
                         backgroundColor: Colors.brown,
                         child: Text("${allPosts[index].userId}"),
                       ) ,
                       subtitle:Text("${allPosts[index].body}"),),
                     );
                     }
                 );
               }else{
                 return CircularProgressIndicator();
               }
            },
          ),
        ),
      ) ,
    );
  }
  }

class Network {
  final String url;

  Network(this.url);

  Future<PostList> loadPost() async {
    Response response = await get(Uri.parse(url));
    if(response.statusCode==200){
      print("$url");
      return PostList.fromJson(json.decode(response.body));

    }else{
      throw Exception("Failed to get post");
    }
  }
}