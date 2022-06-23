import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MatrixCalculator extends StatefulWidget {
  const MatrixCalculator({Key? key}) : super(key: key);

  @override
  MatrixCalculatorState createstate() => MatrixCalculatorState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MatrixCalculatorState();
  }
}

class MatrixCalculatorState extends State<MatrixCalculator> {
  num a = 0;
  num b = 0;
  num c = 0;
  num d = 0;
  num e = 0;
  num f = 0;
  num g = 0;
  num h = 0;
  num i = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "MATRIX CALCULATOR",
          style: TextStyle(fontSize: 10, color: Colors.blue.shade700),
        ),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: Container(
              child: Table(
                children: [
                  TableRow(children: [
                    ButtonShape(a),
                    ButtonShape(b),
                    ButtonShape(c)
                  ]),
                  TableRow(children: [
                    ButtonShape(d),
                    ButtonShape(e),
                    ButtonShape(f)
                  ]),
                  TableRow(children: [
                    ButtonShape(g),
                    ButtonShape(h),
                    ButtonShape(i)
                  ])
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "THE DETERMINANT OF THE MATRIX IS ${Determinant(a, b, c, d, e, f, g, h, i)}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ]),
      ),
    );
  }

  Widget ButtonShape(num input) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
              color: Colors.lightBlueAccent, style: BorderStyle.solid)),
      child: TextField(
        decoration: InputDecoration(prefixText: "0"),
        keyboardType: TextInputType.number,
        onSubmitted: (Value) {
          setState(() {
            input = num.parse(Value);
          });
        },
      ),
    );
  }

  num AdjointPositive(int p1, p2, p3, p4) {
    num adj1;
    adj1 = ((p1 * p4) - (p2 * p3));
    return adj1;
  }

  num AdjointNegative(int n1, n2, n3, n4) {
    num adj2;
    adj2 = ((n1 * n4) - (n2 * n3));
    return adj2;
  }

  num Determinant(a, b, c, d, e, f, g, h, i) {
    num Total;
    num first = ((e * i) - (f * h));
    num second = ((d * i) - (f * g));
    num third = ((d * h) - (e * g));
    Total = (a * first) - (b * second) + (c * third);
    return Total;
  }

  List<num> CoFactor(int a1, b1, c1, d1, e1, f1, g1, h1, i1) {
    List<int> cofactor = [a1, b1, c1, d1, e1, f1, g1, h1, i1];
    return cofactor;
  }

  num Inverse(int adj) {
    num ans;
    ans = adj;
    return ans;
  }
}
