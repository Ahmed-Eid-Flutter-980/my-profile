import 'package:flutter/material.dart';
import 'package:flutter_app_section_2/icons.dart';
import 'package:flutter_app_section_2/pages/profileInfo.dart';
import 'package:flutter_app_section_2/widgets/textField.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({ Key? key }) : super(key: key);

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('حسابى'),
          backgroundColor: Color(0xFF082B53),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0,),
                _ImageHeader(),
                SizedBox(height: 20.0,),
                _formBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * container image 
   * and edit it
   */
  _ImageHeader() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all( Radius.circular(50.0)),
               border: Border.all(
                 color: Color(0xFFE9ECEF),
                 width: 5.0,
               ),
              ),
              child: CircleAvatar(
                child: Image.asset("assets/images/avatar.png"),
                maxRadius: 40,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconManager.editPencil,
                SizedBox(width: 2,),
                Transform.translate(child: Text('تعديل الصورة'), offset: Offset(0,7.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }

// ignore: slash_for_doc_comments
/**
 * form body
 */
  _formBody() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الإسم', style: TextStyle(fontSize: 17.0, color: Color(0xFF082B53),),),
            NewTextField.textField(TextInputType.text),
            SizedBox(height: 40.0,),
            // ========================
            Text('رقم الهاتف', style: TextStyle(fontSize: 17.0, color: Color(0xFF082B53),),),
            NewTextField.textField(TextInputType.number),
            SizedBox(height: 40.0,),
            // ========================
            Text('البريد الألكترونى', style: TextStyle(fontSize: 17.0, color: Color(0xFF082B53),),),
            NewTextField.textField(TextInputType.text),
            SizedBox(height: 40.0,),
            // ========================
            Text('الموقع', style: TextStyle(fontSize: 17.0, color: Color(0xFF082B53),),),
            NewTextField.textAreaField(TextInputType.text),
            // ========================
            SizedBox(height: 90.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF082B53),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                  ),
                  onPressed: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileInfo() ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45.0,
                      vertical: 7.0
                    ),
                    child: Text('حفظ', style: TextStyle(color: Colors.white, fontSize: 17.0),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.0,),

          ],
        ),
      ),
    );
  }

}