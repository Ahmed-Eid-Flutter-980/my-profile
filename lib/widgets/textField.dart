import 'package:flutter/material.dart';
import 'package:flutter_app_section_2/icons.dart';

class NewTextField {
  NewTextField._();

  /**
   * just text field eith input type
   */
  static Material textField(TextInputType type) {
    return Material(
      elevation: 10,
	    shadowColor: Color(0xFFE3E3E3),
      child: TextFormField(
        style: TextStyle(color: Color(0xFFCDCDCD)),
        cursorColor: Color(0xFFCDCDCD),
        keyboardType: type,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: Colors.white,
		      filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  } 

  /**
   * create textarea with maxline 
   * and input type
   */
  static Material textAreaField(TextInputType type) {
    return Material(
      elevation: 10,
	    shadowColor: Color(0xFFE3E3E3), 
      child: TextFormField(
        maxLines: 8,
        style: TextStyle(color: Color(0xFFCDCDCD)),
        cursorColor: Color(0xFFCDCDCD),
        keyboardType: type,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(bottom: 125.0),
            child: IconManager.place(Color(0xFF082B53)),
          ),
          fillColor: Colors.white,
		      filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  } 
}