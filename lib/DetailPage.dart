import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.product}) : super(key: key);

  final ProductDataModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Detail Wisata"),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 30),
          ),
          Text(
            "${product.name}",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Text(
            "${product.price}",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.link_outlined,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.share,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.report,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 30),
          ),
          Image.network(
            product.imageURL.toString(),
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
            child: Text(
              "${product.oldPrice}",
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ]));
  }
}
