import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class MortgageAppSecond extends StatefulWidget {
  MortgageAppSecondState createState() => MortgageAppSecondState();
}

class MortgageAppSecondState extends State<MortgageAppSecond> {
  double Homeprice = 0.0;
  double lengthofyears = 0;
  double interest = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Mortgage Payments"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: 130,
              decoration: BoxDecoration(
                color: secondaryColorlight,
                  border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(2.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Monthly Payment",style: TextStyle(
                    color: secondaryBackgroundwhite,
                  ),),
                  SizedBox(height: 2.0),
                  Text(
                      "\$${MonthlyPayment(Homeprice, lengthofyears, interest).toStringAsFixed(2)}",style: TextStyle(
                    color: secondaryBackgroundwhite,
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    color: secondaryColorDark, //Colors.blueGrey.shade100,
                    style: BorderStyle.solid),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Column(
                  children: [
                    TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        prefixText: "Home Price",
                      ),
                      onChanged: (String value) {
                        try {
                          Homeprice = double.parse(value);
                        } catch (exception) {
                          Homeprice = 0.0;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Length of Loan(years)")),
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color:secondaryColorDark   //Colors.blueGrey.withOpacity(0.2),
                                ),
                                height: 40,
                                width: 40,
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondaryBackgroundwhite,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (lengthofyears > 0) {
                                    lengthofyears -= 5;
                                  } else {}
                                });
                              },
                            ),
                            Text("${lengthofyears}"),
                            InkWell(
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      color:secondaryColorDark//Colors.blueGrey.withOpacity(0.2),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    height: 40,
                                    width: 40,
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: secondaryBackgroundwhite,
                                        ),
                                      ),
                                    )),
                                onTap: () {
                                  setState(() {
                                    lengthofyears += 5;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Interest")),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("${interest.toStringAsFixed(2)}%"),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Slider(
                        min: 0,
                        max: 10,
                        divisions: 100,
                        activeColor: primaryColorDark,
                        inactiveColor: Colors.grey,
                        value: interest,
                        onChanged: (double newValue) {
                          setState(() {
                            interest = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  double MonthlyPayment(double home, double loan, double intet) {
    double Payment = 0;
    if (home < 0 || home == 0 || loan == 0 || intet == 0) {
    } else {
      double math = (home * (intet / 100)) / loan;
      Payment = math + (home / loan);
    }
    return Payment;
  }
}
