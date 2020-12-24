import 'package:flutter/material.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/widgets/prod.dart';

class HomePageDesigner extends StatefulWidget {
  @override
  _HomePageDesignerState createState() => _HomePageDesignerState();
}

class _HomePageDesignerState extends State<HomePageDesigner> {
  Products products =Products();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(bottom:12.0,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Prod(
                    widthCard: 180,
                    widthButton: 167,
                    index: index,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Prod(
                    widthCard: 180,
                    widthButton: 167,
                    index: index,
                  ),
                ],
              ),
            );

          },

          scrollDirection: Axis.vertical,

        ),
    );

  }
}
