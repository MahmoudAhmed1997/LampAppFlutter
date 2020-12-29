import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:lamp/localization/language_constants.dart';

class RatingOrder extends StatelessWidget {
  var rating = 3.3;
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomPadding: false,

      body: Stack(
        children: [
        Center(
          child: Container(
            width: 327,
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10.0,bottom: 5),
                    child: Container(
                        height: 5,width: 48,
                        child: SvgPicture.asset("assets/images/indicator.svg")),
                  ),
                  Text(
                    getTranslated(context, "rating_order"),
                    style: TextStyle(fontSize: 17,color: Color(0xff18304B)),)
                 , SizedBox(height: 13,),

                  Text(
                    getTranslated(context, "add_rating"),
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 13,),

                  Text(
                      getTranslated(context, "rating_help_us"),
                    style:TextStyle(fontSize: 14,fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
                 SizedBox(height: 30,),
                  SmoothStarRating(
                    rating: rating,
                    color: Color(0xffF45540),
                    isReadOnly: false,
                    borderColor: Color(0xffF45540),
                    size: 55,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: true,
                    spacing: 2.0,


                    onRated: (value) {
                      print("rating value -> $value");
                      // print("rating value dd -> ${value.truncate()}");
                    },
                  ),

                  Container(
                    height: 120,
                    width: 284,
                    child: TextFormField(
                      textAlign: TextAlign.center,

                      maxLines: 8,
                      minLines: 5,
                      enableInteractiveSelection: true,
                      style: TextStyle(color: Colors.grey),
                      key: ValueKey("تقييم"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(


                        contentPadding: EdgeInsets.all(10),
                        alignLabelWithHint: true,
                        filled: true,
                        fillColor: Color(0xffEBEBEB),
                        hintText: getTranslated(context, "add_description_rating"),
                        hintStyle: TextStyle(
                            color: Color(0xffA4B0BE),

                            fontSize: 15,),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(0xff18304B)),
                          borderRadius:
                          new BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23.0,
                  ),



                  Container(
                    width: 327,
                    height: 56,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      color: Color(0xff00B5F0),
                      child: Text(
                          getTranslated(context, "added_rating"),
                        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {
                        null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

          myLocale.languageCode=="en"?
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 16),
            child: Container(
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/icons/button_cancle.svg")),
            ),
          ):Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 16),
            child: Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/icons/button_cancle.svg")),
            ),
          )
     ] ),
    ); }
}
