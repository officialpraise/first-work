import 'package:untitled/model/question.dart';
import 'package:flutter/material.dart';
//import 'package:untitled/model/movie.dart';
//
// class MovieList extends StatelessWidget {
//   final List<Movie> movieList = Movie.getMovies();
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Movies"),
//           backgroundColor: Colors.blueGrey.shade900,
//         ),
//         backgroundColor: Colors.blueGrey.shade900,
//         body: ListView.builder(
//             itemCount: movieList.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Stack(children: [
//                 movieCard(movieList[index], context),
//                 Positioned(
//                     top: 10.0,
//                     child: movieImage(movieList[index.bitLength].images[3]))
//               ]);
//
//               //Card(
//               //   elevation: 4.5,
//               //   color: Colors.white,c
//               //       child: Container(
//               //         height: 200,
//               //         width: 200,
//               //         decoration: BoxDecoration(
//               //           image: DecorationImage(
//               //             image: NetworkImage(movieList[index].images[0]),
//               //             fit: BoxFit.cover,
//               //           ),
//               //           color: Colors.blue,
//               //           borderRadius: BorderRadius.circular(13.9),
//               //         ),
//               //         child: null,
//               //       ),
//               //     ),
//               //     trailing: Text("....."),
//               //     onTap: () {
//               //       Navigator.push(
//               //           context,
//               //           MaterialPageRoute(
//               //               builder: (context) => MovieListDetails(
//               //                   movieList.elementAt(index).title,
//               //                   movieList[index])));
//               //     },
//               //     title: Text(movieList[index].title),
//               //     subtitle: Text(movieList[index].country),
//               //   ),
//               // );
//             }));
//   }
//
//   Widget movieCard(Movie movie, BuildContext context) {
//     return InkWell(
//       child: Container(
//         margin: EdgeInsets.only(left: 20),
//         width: MediaQuery.of(context).size.width,
//         height: 120.0,
//         child: Card(
//           color: Colors.black45,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(
//                         child: Text(
//                           movie.title,
//                           style: TextStyle(
//                               fontSize: 17.0,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                       Text(
//                         "Rating: ${movie.imdbRating}/10",
//                         style: TextStyle(
//                           fontSize: 15.0,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Flexible(
//                           child: Text("Realease: ${movie.release}",
//                               style: mainTextStyle())),
//                       Flexible(
//                           child: Text(movie.runtime, style: mainTextStyle())),
//                       Flexible(
//                         child: Text(movie.rated, style: mainTextStyle()),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => MovieListDetails(movie.title, movie)));
//       },
//     );
//   }
//
//   TextStyle mainTextStyle() {
//     return TextStyle(
//       fontSize: 15.0,
//       color: Colors.grey,
//     );
//   }
//
//   Widget movieImage(String imageUrl) {
//     return Container(
//       width: 90,
//       height: 90,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: NetworkImage(imageUrl),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
//
// class MovieListDetails extends StatelessWidget {
//   final String movieListView;
//   final Movie movie;
//
//   MovieListDetails(this.movieListView, this.movie);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Movies"),
//           backgroundColor: Colors.blueGrey.shade900,
//         ),
//         body: ListView(
//           children: [
//             secondmovieListDetails(movie.images[4], context),
//             moviePosterframe(movie),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//               child: Divider(
//                 height: 0.5,
//                 color: Colors.grey,
//               ),
//             ),
//             MovieDetailsCast(movie),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//               child: Divider(
//                 height: 0.5,
//                 color: Colors.grey,
//               ),
//             ),
//             MovieListImageSCrol(movie.images),
//           ],
//         )
//
//         //Center(
//         //   child: Container(
//         //     child: ElevatedButton(
//         //       child: Text("Go Back ${movie.director}"),
//         //       onPressed: () =>
//         //       {
//         //         Navigator.pop(context),
//         //       },
//         //     ),
//         //   ),
//         );
//   }
//
//   Widget secondmovieListDetails(String img, BuildContext context) {
//     return Stack(
//       children: [
//         Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Container(
//               height: 170,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   border: Border.all(width: 1.0, color: Colors.grey),
//                   image: DecorationImage(
//                     image: NetworkImage(img),
//                     fit: BoxFit.cover,
//                   )),
//             ),
//             Icon(
//               Icons.play_circle_outline,
//               size: 100,
//               color: Colors.white,
//             ),
//           ],
//         ),
//         Container(
//           margin: EdgeInsets.only(top: 120),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter),
//           ),
//           height: 80,
//         )
//       ],
//     );
//   }
//
//   Widget moviePosterframe(Movie movie) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           MoviePoster(movie.images[0].toString(), movie),
//           SizedBox(width: 16),
//           Expanded(child: MovieDetailsHeader(movie)),
//         ],
//       ),
//     );
//   }
// }
//
// class MoviePoster extends StatelessWidget {
//   final String poster;
//   final Movie movie;
//
//   MoviePoster(this.poster, this.movie);
//
//   Widget build(BuildContext context) {
//     var borderRadius = BorderRadius.all(Radius.circular(10));
//     return Card(
//       child: ClipRRect(
//         borderRadius: borderRadius,
//         child: Container(
//           width: MediaQuery.of(context).size.width / 4,
//           height: 160,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: NetworkImage(poster), fit: BoxFit.cover)),
//         ),
//       ),
//     );
//   }
// }
//
// class MovieDetailsHeader extends StatelessWidget {
//   final Movie movie;
//
//   MovieDetailsHeader(this.movie);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "${movie.year}.${movie.genre}".toUpperCase(),
//           style: TextStyle(fontWeight: FontWeight.w400, color: Colors.cyan),
//         ),
//         Text(
//           "${movie.title}",
//           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
//         ),
//         Text.rich(
//           TextSpan(
//               style: TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w300,
//               ),
//               children: [
//                 TextSpan(text: movie.plot),
//                 TextSpan(text: "more...", style: TextStyle(color: Colors.blue)),
//               ]),
//         ),
//       ],
//     );
//   }
// }
//
// class MovieDetailsCast extends StatelessWidget {
//   final Movie movie;
//
//   MovieDetailsCast(this.movie);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           children: [
//             MovieField("Cast", movie.actors),
//             MovieField("Director", movie.director),
//             MovieField("Awards", movie.awards),
//           ],
//         ));
//   }
// }
//
// class MovieField extends StatelessWidget {
//   final String field;
//   final String value;
//
//   MovieField(this.field, this.value);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "$field:",
//           style: TextStyle(
//             fontWeight: FontWeight.w300,
//             color: Colors.black38,
//             fontSize: 12,
//           ),
//         ),
//         Expanded(
//           child: Text(
//             value,
//             style: TextStyle(
//               fontWeight: FontWeight.w300,
//               color: Colors.black38,
//               fontSize: 12,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
//
// class MovieListImageSCrol extends StatelessWidget {
//   final List<String> poster;
//
//   MovieListImageSCrol(this.poster);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//     Padding(
//     padding: EdgeInsets.symmetric(horizontal: 5.0),
//       child:Text(
//         "more Movie Poster".toUpperCase(),
//         style: TextStyle(
//           fontSize: 14,
//           color: Colors.black26,
//         ),
//       )),
//       Container(
//           height: 170,
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 16,horizontal: 5.0),
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               separatorBuilder: (context, index) => SizedBox(
//                 width: 8,
//               ),
//               itemCount: poster.length,
//               itemBuilder: (context, index) => ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width / 4,
//                   height: 160,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(
//                           poster[index],
//                         ),
//                         fit: BoxFit.cover),
//                   ),
//                 ),
//               ),
//             ),
//           ))
//     ]);
//   }
// }

//QUIZ APP CODE
class QuizApp extends StatefulWidget {
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp> {
  int currentQuestionIndex = 0;
  List questionBank = [
    Question.name(
        "The U.S. Declaration of the Independence was adopted in 1776", true),
    Question.name("The atomic number for lithium is 17", true),
    Question.name(
        "A cross between a horse and a zebra is called a 'Hobra", false),
    Question.name("The black box in a plane is black", false),
    Question.name(
        "Waterloo has the greatest number of tube platforms in London", true),
    Question.name(
        "There are two parts of the body that can't heal themselves", false),
    Question.name(
        "The Great Wall of China is longer than the distance between London and Beijing",
        false),
    Question.name("The unicorn is the national animal of Scotland", true),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueGrey,
        title: Text(
          "True Citizen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        alignment: Alignment.center,
        //color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "images/082_flag.png",
                width: 250,
                height: 180,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.4),
                        border: Border.all(
                            color: Colors.blueGrey.shade400,
                            style: BorderStyle.solid)),
                    height: 120.0,
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "${questionBank[currentQuestionIndex].questionText}",
                        //style: TextStyle(fontSize: 16.9, color: Colors.white),
                      ),
                    )))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey.shade900,
                  ),
                  onPressed: () => nextQuestionBack(),
                  child: Icon(Icons.arrow_back,color: Colors.white,),),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade900,
                    ),
                    onPressed: () => checkAnswer(true),
                    child: Text(
                      "TRUE",
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade900,
                    ),
                    onPressed: () => checkAnswer(false),
                    child: Text(
                      "FALSE",
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade900,
                    ),
                    onPressed: () => nextQuestion(),
                    child: Icon(Icons.arrow_forward, color: Colors.white)),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  nextQuestionBack(){
    setState(() {
      currentQuestionIndex = (currentQuestionIndex - 1) % questionBank.length;
    });
  }
  nextQuestion() {
    setState(() {
      currentQuestionIndex = (currentQuestionIndex + 1) % questionBank.length;
    });
  }

  checkAnswer(bool userChoice) {
    if (userChoice == questionBank[currentQuestionIndex].isCorrect) {
      //print("yes correct");

      final snackBar = SnackBar(
        duration: Duration(microseconds: 1000),
        backgroundColor: Colors.green.shade900,
        content: Text(
          "CORRECT",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      nextQuestionBack();
    } else {
      final snackBar = SnackBar(
        duration: Duration(microseconds: 1000),
        backgroundColor: Colors.red.shade900,
        content: Text(
          "INCORRECT",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      nextQuestionBack();
    }
  }
}


// class BillSpiliter extends StatefulWidget {
//   @override
//   BillSpiliterState createState() => BillSpiliterState();
// }
//
// class BillSpiliterState extends State<BillSpiliter> {
//   int tipPercentage = 0;
//   int personCounter = 1;
//   double billAmount = 0.0;
//   Color purple = HexColor("#6908D6");
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
//         alignment: Alignment.center,
//         color: Colors.white,
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           padding: EdgeInsets.all(20.5),
//           children: [
//             Container(
//               alignment: Alignment.center,
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                   color: purple.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(12.0)),
//               child: Center(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Total Per person",
//                         style: TextStyle(
//                             fontWeight: FontWeight.normal,
//                             fontSize: 15.0,
//                             color: purple),
//                       ),
//                       Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Text(
//                             "\$${(((billAmount*tipPercentage)/100)+billAmount)/personCounter}",
//                             style: TextStyle(
//                                 fontSize: 34.9,
//                                 fontWeight: FontWeight.bold,
//                                 color: purple),
//                           ))
//                     ]),
//               ),
//             ),
//             Container(
//                 margin: EdgeInsets.only(top: 20.0),
//                 padding: EdgeInsets.all(12.0),
//                 decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border.all(
//                       color: Colors.blueGrey.shade100,
//                       width: 10.0,
//                       style: BorderStyle.solid),
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextField(
//                         keyboardType:
//                             TextInputType.numberWithOptions(decimal: true),
//                         style: TextStyle(color: purple),
//                         decoration: InputDecoration(
//                             prefixText: "Bill Amount",
//                             prefixIcon: Icon(Icons.attach_money)),
//                         onChanged: (String value) {
//                           try {
//                             billAmount = double.parse(value);
//                           } catch (exception) {
//                             billAmount = 0.0;
//                           }
//                         },
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text(
//                             "Split",
//                             style: TextStyle(color: Colors.grey.shade700),
//                           ),
//                           Row(
//                             children: [
//                               InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     if (personCounter > 1) {
//                                       personCounter--;
//                                     } else {
//                                       //do notyhing
//                                     }
//                                   });
//                                 },
//                                 child: Container(
//                                   width: 40.0,
//                                   height: 40.0,
//                                   margin: EdgeInsets.all(10.0),
//                                   decoration: BoxDecoration(
//                                     color: purple.withOpacity(0.1),
//                                     borderRadius: BorderRadius.circular(7.0),
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       "-",
//                                       style: TextStyle(
//                                           color: purple,
//                                           fontSize: 17.0,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 "$personCounter",
//                                 style: TextStyle(
//                                   color: purple,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 17.0,
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   personCounter++;
//                                 },
//                                 child: Container(
//                                     width: 40.0,
//                                     height: 40.0,
//                                     margin: EdgeInsets.all(10.0),
//                                     decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(7.0),
//                                         color: purple.withOpacity(0.1)),
//                                     child: Center(
//                                       child: Text(
//                                         "+",
//                                         style: TextStyle(
//                                             fontSize: 17.0,
//                                             fontWeight: FontWeight.bold,
//                                             color: purple),
//                                       ),
//                                     )),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Tip",
//                               style: TextStyle(
//                                 color: Colors.grey.shade700,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(18.0),
//                               child: Text(
//                                 "\$${(billAmount*tipPercentage)/100}",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 17.0,
//                                     color: purple),
//                               ),
//                             )
//                           ]),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "$tipPercentage%",
//                             style: TextStyle(
//                                 color: purple,
//                                 fontSize: 17.0,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Slider(
//                               max: 100,
//                               min: 0,
//                               activeColor: purple,
//                               inactiveColor: Colors.grey,
//                               divisions: 10,
//                               value: tipPercentage.toDouble(),
//                               onChanged: (double newValue) {
//                                 setState(() {
//                                   tipPercentage = newValue.round();
// //                                 });
// //                               })
//                         ],
//                       )
//                     ]))
//           ],
//         ),
//       ),
//     );
//   }
// }
// //    calculatetotaltip(int tippercentage,double billedamount ){
// //     double totalTip=1.0;
// //     if(billAmount==null || billedamount.toString().isEmpty || billedamount<0){
// //       //no response
// //     }
// //     else{
//       totalTip=(tippercentage*billedamount)/100;
//     }
//     return totalTip;
//   }
//
// calculatetotalperperson(int tippercentage,double billedamount,){
// var total=((calculatetotaltip(tippercentage, billedamount) + billedamount)/personCounter);
// return total.toStringAsFixed(2);
// }

//quote build app
// class Wisdom extends StatefulWidget {
//   @override
//   WisdomState createState() => WisdomState();
// }
//
// class WisdomState extends State<Wisdom> {
//   int index = 0;
//   List Quotes = [
//     "Tough times never last but tough people do.",
//     "Get busy living or get busy dying.",
//     "Whether you think you can or you think you can’t, you’re right.",
//     "Tis better to have loved and lost than to have never loved at all.",
//     "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do.",
//     "Great minds discuss ideas; average minds discuss events; small minds discuss people.",
//     "Those who dare to fail miserably can achieve greatly.",
//     "The opposite of love is not hate; it’s indifference.",
//     "When life gives you lemons, make lemonade",
//     "When life gives you lemons make lemonade.",
//     "Never let the fear of striking out keep you from playing the game.",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "QUOTABLE QUOTES",
//           style: TextStyle(fontSize: 34, color: Colors.white),
//
//         ),
//         backgroundColor: Colors.amber.shade700,
//         centerTitle: true,
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//                 child: Center(
//               child: Container(
//                 width: 400,
//                 height: 200,
//                 margin: EdgeInsets.all(30.0),
//                 decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border.all(width: 2.0, color: Colors.amber.shade700),
//                   borderRadius: BorderRadius.circular(14.5),
//                 ),
//                 child: Center(
//                   child: Text(
//                     Quotes[index % Quotes.length],
//                     style: TextStyle(
//                         fontStyle: FontStyle.italic,
//                         fontSize: 17,
//                         color: Colors.black,
//                         backgroundColor: Colors.white),
//                   ),
//                 ),
//               ),
//             )),
//             Divider(
//               thickness: 1.3,
//               color: Colors.orange,
//             ),
//             Padding(
//                 padding: EdgeInsets.only(top: 18.0),
//                 child: ElevatedButton(
//                   style: ButtonStyle(alignment: Alignment.center),
//                   onLongPress: () => "tapped",
//                   onPressed: showQoutes,
//                   child: Text(
//                     "INSPIRE ME",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 10, color: Colors.white),
// //                   ),
// //                 )),
// //             Spacer()
// //           ],
//         ),
//       ),
//     );
//   }
//
//   void showQoutes() {
//     setState(() {
//       index = index + 1;
//     });
//   }
// }
// //
// class Bizcard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "BizCard",
//           style: TextStyle(
//             fontSize: 24,
//             color: Colors.deepOrange.shade700,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Stack(
//           alignment: Alignment.topRight,
//           children: [
//             _getCard(),
//             _getAvatar(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container _getCard() {
//     return Container(
//       width: 350,
//       height: 200,
//       margin: EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(52.5),
//         color: Colors.blue,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("paullo"),
//           Text("BUILD APPA WITH PAULLO.COM"),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.email,
//                   semanticLabel: "gmail.com", color: Colors.deepOrange),
//               Icon(
//                 Icons.call,
//                 semanticLabel: "phone number",
//                 color: Colors.black,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Container _getAvatar() {
//     return Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
//             border: Border.all(color: Colors.deepOrange, width: 2.2),
//             image: DecorationImage(
//               image: NetworkImage("https://picsum.photos/300/300"),
//               fit: BoxFit.cover,
//             )));
//   }
// }
// //import 'package:bottom_navy_bar/bottom_navy_bar.dart';

//
// class Custom extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onDoubleTap: () {
//         final snackBar = SnackBar(
//           content: Text("good job"),
//         );
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         color: Colors.black,
//         child: Text(
//           "check status",
//           style: TextStyle(color: Colors.limeAccent),
//         ),
//       ),
//     );
//   }
// }
//
//class CustomButton extends StatelessWidget {},
//       child: Container(
//         padding: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Text("BUTTON"),
//       ),
//     );
//   }
// }
//
// class Scafexample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "helloman",
//             style: TextStyle(color: Colors.black),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.amberAccent.shade700,
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () => print("pressed"),
//               iconSize: 20,
//             ),
//             IconButton(
//               icon: Icon(Icons.abc),
//               onPressed: () => print("pressed"),
//               iconSize: 20,
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.green,
//           child: Icon(Icons.call_missed),
//           onPressed: () => print("floating button touched"),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//                 label: "first",
//                 icon: Icon(Icons.account_circle, color: Colors.pink),
//                 backgroundColor: Colors.green),
//             BottomNavigationBarItem(
//               label: "second",
//               icon: Icon(Icons.access_alarm, color: Colors.lime),
//             ),
//           ],
//           onTap: (int index) => print("tapped $index"),
//         ),
//         body: Container(
//           color: Colors.orange,
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("CLICK THE BUTTONS BELOW"),
//               CustomButton(),
//               Custom(),
//               InkWell(
//                 child: Text(
//                   "TAP ME",
//                   style: TextStyle(fontSize: 23.4),
//                 ),
//                 onTap: () => print("tapped"),
//               ),
//             ],
//           ),
//         ));
//   }
// }
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// // TODO: implement build
//     return Material(
//         color: Colors.deepOrange,
//         child: Center(
//           child: Text(
//             "HELLO WORLD",
//             textDirection: TextDirection.ltr,
//           ),
//         ));
//   }
// }
