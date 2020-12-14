import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            print(null);
          },
          child: Image(image: AssetImage("assets/images/t_shirt.png"),)

        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
              icon: Icon(
              Icons.favorite_border,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
              },
            ),

          title: Text(
            "product.title",
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              //cart.addItem(product.id, product.price, product.title);
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Added item to cart !!",
                  textAlign: TextAlign.left,
                ),
                duration: Duration(seconds: 2),
                action: SnackBarAction(label: "UNDO", onPressed: (){
                 // cart.removeSingleItem(product.id);
                } ),
              ));
            },
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
