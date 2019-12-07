import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  final EdgeInsets _padding;
  final String _title;
  final double _fontSize;
  final Color _colors;

  TitleContainer(this._padding, this._title, this._fontSize,this._colors);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      child: Text(
        _title,
        style: TextStyle(color: _colors, fontSize: _fontSize),
      ),
    );
  }
}

class My360Image extends StatelessWidget {
  const My360Image({
    Key key,
    @required int counter,
  }) : _counter = counter, super(key: key);

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag:'image_car' ,
      child: Image.asset(
        'images/$_counter.gif',
        height: 250,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class SingleImage extends StatelessWidget {

  final String imageUrl;
  final heroTag;
  SingleImage(this.imageUrl,this.heroTag);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Image.asset(
        'images/$imageUrl',
        height: 250,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class MyBookBtn extends StatelessWidget {

  final EdgeInsets _edgeInsets;

  MyBookBtn(this._edgeInsets);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _edgeInsets,
      child: Container(
        alignment: Alignment(1.0, 1.0),
        height: 60,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                "Book now ",
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PriceContainer extends StatelessWidget {
  final String price;
  final Color fontColor;
  PriceContainer (this.price,this.fontColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleContainer(EdgeInsets.only(left: 16), "\$$price", 30.0,fontColor),
            TitleContainer(
                EdgeInsets.only(left: 16), "Starting price", 12.0,fontColor),
          ],
        ),

      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String imageName;
  final String title;
  final bool isWhite;
  final Color fontColor;
  FeatureCard(this.imageName, this.title,this.isWhite,this.fontColor);
  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.all(10.0),
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[

            Image.asset(
              getImageName(imageName,isWhite),
              height: 30,
              width: 30,
              fit: BoxFit.fill,
            ),
            Text(
              "$title",
              style: TextStyle(fontSize: 16, color: fontColor),
            )
          ],
        ),
      ),
    );
  }
}

String getImageName(String imageName, bool isWhite) {

  if(isWhite){
    return "images/"+imageName+"_white.png";
  }else{
    return "images/"+imageName+".png";
  }
}

class BottomSheetContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(30.0))
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey
              ),
            ),
            Text(
              'Check more information',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}