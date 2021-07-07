import 'package:flutter/material.dart';
import 'package:flutter_app_section_2/icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
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
                _profileIfoHeader(),
                SizedBox(
                  height: 40.0,
                ),
                // ===================================

                _profileUserName_Rate(),
                SizedBox(
                  height: 10.0,
                ),
                // ===================================

                _profileUserData(),
                SizedBox(
                  height: 25.0,
                ),
                // ===================================
                _profileUserAddress(),
                SizedBox(
                  height: 60.0,
                ),
                // ===================================
                _profileUpdate(),
                SizedBox(
                  height: 55.0,
                ),
                // ===================================
                _profileLogout(),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// ignore: slash_for_doc_comments
/**
 * profile user header 
 * have user cover iamge and his image
 */
  _profileIfoHeader() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 180,
          width: double.infinity,
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.dstATop),
              image: new AssetImage(
                'assets/images/coverImage.jpg',
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 40.0),
          child: ClipRRect(
            // borderRadius: new BorderRadius.circular(60.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
          ),
        ),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * profile information 
   * have user name and rate
   */
  _profileUserName_Rate() {
    var _ratingValue = 0.0;
    return Column(
      children: [
        Text(
          'أحمد عيد',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        RatingBar(
            itemSize: 20.0,
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
                full: Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                half: Icon(
                  Icons.star_half,
                  color: Colors.orange,
                ),
                empty: Icon(
                  Icons.star_outline,
                  color: Colors.orange,
                )),
            onRatingUpdate: (value) {
              setState(() {
                _ratingValue = value;
                print(_ratingValue);
              });
            }),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * profile user data
   * have user phone number and user email
   */
  _profileUserData() {
    return Container(
      width: double.infinity,
      color: Color(0xFFECECEC),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
        child: Column(
          children: [
            Text(
              'بياناتى',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '00104454198432',
              style: TextStyle(fontSize: 14.0, color: Color(0xFF9B9B9B)),
            ),
            Text(
              'example@mail.com',
              style: TextStyle(fontSize: 14.0, color: Color(0xFF9B9B9B)),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * profile user address
   * have user home address
   */
  _profileUserAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(
            'العنوان',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: double.infinity,
          color: Color(0xFFECECEC),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconManager.home,
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'منزل',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'شارع العليا الرياض 3243 السعودية',
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF9B9B9B)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * profile update 
   * have button for update user profile
   */
  _profileUpdate() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        boxShadow: <BoxShadow>[
          BoxShadow(
            spreadRadius: 4,
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 20,
            
          ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
        onPressed: () {
          print('object');
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              IconManager.pencleWithcolor(Color(0xFF082B53)),
              Text(
                'تعديل',
                style: TextStyle(color: Color(0xFF082B53), fontSize: 17.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * profile logput 
   * have button to get user out of the system
   */
  _profileLogout() {
    return Container(
      width: 190,
      child: Material(
        elevation: 10,
	    shadowColor: Color(0xFFE3E3E3),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            
          ),
          onPressed: () {
            print('object');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: [
                IconManager.IconLogoutWithColor(Color(0xFFA22021)),
                SizedBox(width: 5.0,),
                Text(
                  'تسجيل الخروج',
                  style: TextStyle(color: Color(0xFFA22021), fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
