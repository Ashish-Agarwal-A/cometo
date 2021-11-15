import 'package:cometo/products.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  height: 500,
                  decoration: BoxDecoration(color: Color(0xFFF06292),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
                ),

                tittle(product: product,)
              ],

            ),
          )
        ],
      ),
    );
    return Container();
  }
}
class tittle extends StatelessWidget {
  const tittle({Key key, this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Buddy! Apke Father Aaye Hain..",textAlign: TextAlign.right,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5,),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black, fontSize: 20),
          ),
          Row(
            children: <Widget>[
              RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Followers\n", style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.black,)),
                    TextSpan(
                      text: "\1.8 million",
                      style: Theme.of(context)
                          .textTheme.headline6.copyWith(color: Colors.black87,fontWeight: FontWeight.bold),
                    )
                  ]
              )),
              Expanded(child: Image.asset(product.image,
                fit: BoxFit.fill,),)
            ],
          )
        ],
      ),
    );
  }
}

