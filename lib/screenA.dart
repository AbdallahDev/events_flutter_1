import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    var titleStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
    //This variable will store the textStyle of the subjects.
    var subjectStyle = TextStyle(fontSize: 17);
    TextDirection _rtlTextDirection = TextDirection.rtl;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("نشاطات مجلس النواب"),
          backgroundColor: Color.fromRGBO(196, 0, 0, 1)),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Card(
                elevation: 2,
                margin: EdgeInsets.only(top: 7, bottom: 7),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        textDirection: _rtlTextDirection,
                        children: <Widget>[
                          Text(
                            "التاريخ - الوقت : ",
                            style: titleStyle,
                            textDirection: _rtlTextDirection,
                          ),
                          //I've wrapped the text in a Flexible widget because I want
                          // the text to flow on multi-lines.
                          Flexible(
                            child: Text(
                              "07-01-2020 - 13:30",
                              textDirection: _rtlTextDirection,
                              style: subjectStyle,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: _rtlTextDirection,
                        children: <Widget>[
                          Text(
                            "جـهــة الــنشــاط : ",
                            textDirection: _rtlTextDirection,
                            style: titleStyle,
                          ),
                          //I've wrapped the text in a Flexible widget because I want
                          // the text to flow on multi-lines.
                          Flexible(
                            child: Text(
                              "اللجنة القانونية",
                              textDirection: _rtlTextDirection,
                              style: subjectStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: _rtlTextDirection,
                        children: <Widget>[
                          Text(
                            "الــمــــوضــــــوع : ",
                            textDirection: _rtlTextDirection,
                            style: titleStyle,
                          ),
                          //I've wrapped the text in a Flexible widget because I want
                          // the text to flow on multi-lines.
                          Flexible(
                            child: Text(
                              "لمناقشة بعض القوانين",
                              textDirection: _rtlTextDirection,
                              style: subjectStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: _rtlTextDirection,
                        children: <Widget>[
                          Text(
                            "مكـان الاجـتمـاع : ",
                            textDirection: _rtlTextDirection,
                            style: titleStyle,
                          ),
                          //I've wrapped the text in a Flexible widget because I want
                          // the text to flow on multi-lines.
                          Flexible(
                            child: Text(
                              "قاعة مصطفى خليفة الطابق الثاني",
                              textDirection: _rtlTextDirection,
                              style: subjectStyle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
