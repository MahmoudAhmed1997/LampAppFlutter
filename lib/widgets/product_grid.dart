import 'package:flutter/material.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/widgets/product_item.dart';


class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
     // padding: const EdgeInsets.all(10.0),
      itemCount: 5,
      itemBuilder: (ctx, i) =>  Prod(

      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3.5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
