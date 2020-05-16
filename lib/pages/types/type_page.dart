import 'package:flutter/material.dart';
import 'package:money_tracker/pages/icons/icon_holder.dart';

class TypePage extends StatefulWidget {
  @override
  _TypePageState createState() => _TypePageState();
}

class _TypePageState extends State<TypePage> {
  Map<String, dynamic> _data = Map<String, dynamic>();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  IconData _newIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Type"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              if (!_formkey.currentState.validate()) return;
              _formkey.currentState.save();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Form(
        key: _formkey,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                IconHolder(
                  newIcon: _newIcon,
                  onIconChange: (iconData) {
                    setState(() {
                      _newIcon = iconData;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                  validator: (String value) {
                    if (value.isEmpty) return "Required";
                  },
                  onSaved: (String value) => _data["name"] = value,
                )
              ],
            )),
      ),
    );
  }
}
