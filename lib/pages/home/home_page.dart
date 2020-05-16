import 'package:flutter/material.dart';
import 'package:money_tracker/pages/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  final amount = "1205";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      drawer: Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _TotalBudget(amount: amount),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height - 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _BarLine(100, 550, Colors.red, "Withdraw"),
                _BarLine(400, 1050, Colors.green, "Deposite"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BarLine extends StatelessWidget {
  const _BarLine(
    this.height,
    this.amount,
    this.color,
    this.lebel, {
    Key key,
  }) : super(key: key);

  final int amount;
  final String lebel;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: height,
          width: 100,
          color: color,
        ),
        Text(
          lebel,
        ),
        Text(
          "\$$amount",
        ),
      ],
    );
  }
}

class _TotalBudget extends StatelessWidget {
  const _TotalBudget({
    Key key,
    @required this.amount,
  }) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        "\$${amount}",
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.purpleAccent,
          ],
        ),
      ),
    );
  }
}
