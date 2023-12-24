import 'package:flutter/material.dart';

const appColor = Color(0xFF41CDA4);
const appColor2 = Color(0xFF3DBCC7);
const appColor3 = Color.fromARGB(255, 160, 240, 216);

const backgroundColor = Color.fromARGB(255, 243, 243, 243);

centerHeading(val) {
  return Text(
    val,
    textAlign: TextAlign.center,
    style:
        const TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black),
  );
}

centerText(val) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Text(
      val,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 12, color: Colors.black54),
    ),
  );
}

colorTitle(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 20, fontFamily: 'bold', color: appColor),
  );
}

blackHeading(val) {
  return Text(
    val,
    style:
        const TextStyle(fontSize: 18, fontFamily: 'bold', color: Colors.black),
  );
}

blackHeadingSmall(val) {
  return Container(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(
      val,
      style: const TextStyle(
          fontSize: 16, fontFamily: 'bold', color: Colors.black),
    ),
  );
}

boldText(val) {
  return Text(
    val,
    style:
        const TextStyle(fontSize: 14, fontFamily: 'bold', color: Colors.black),
  );
}

blackText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 14, color: Colors.black),
  );
}

mediumText(val) {
  return Text(
    val,
    style: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  );
}

greyText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 14, color: Colors.black54),
  );
}

greyTextSmall(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 12, color: Colors.black54),
  );
}

appcolorText(val) {
  return Text(
    val,
    style: const TextStyle(fontSize: 12, color: appColor, fontFamily: 'bold'),
  );
}

orangeText(val) {
  return Text(
    val,
    style:
        const TextStyle(fontSize: 12, color: Colors.orange, fontFamily: 'bold'),
  );
}

textField(hint) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: TextField(
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: const TextStyle(color: Colors.black54, fontSize: 12),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: appColor),
        ),
      ),
    ),
  );
}

textFieldHint(hint) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black45, fontSize: 14),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: appColor),
        ),
      ),
    ),
  );
}
