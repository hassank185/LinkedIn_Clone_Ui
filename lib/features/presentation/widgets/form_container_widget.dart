import 'package:flutter/material.dart';



class FormContainerWidget extends StatefulWidget {
  const FormContainerWidget({
    this.controller,
    this.isPasswordField,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType
  });

  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  @override
  _FormContainerWidgetState createState() => new _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {

  bool _obscureText = true;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: new TextFormField(
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true? _obscureText : false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        cursorColor: Colors.grey,
        cursorHeight: 30,
        style: TextStyle(fontSize: 19),
        decoration: new InputDecoration(
          focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: widget.hintText,
          suffixIcon: new GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child:
            widget.isPasswordField==true? Icon(_obscureText ? Icons.visibility_off : Icons.visibility, color: _obscureText == false ? Colors.grey : Colors.grey,) : Text(""),
          ),
        ),
      ),
    );
  }
}