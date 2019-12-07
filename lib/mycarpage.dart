import 'package:flutter/material.dart';
import 'title_n_ImageWidget.dart';
import 'carlistdata/cardatamodel.dart';

class MyCarPage extends StatefulWidget {
  final CarDataModel carDataModel;
  MyCarPage(this.carDataModel);
  @override
  _MyCarPageState createState() => _MyCarPageState();
}

class _MyCarPageState extends State<MyCarPage> {
  int _counter = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.carDataModel.cardColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                Icons.arrow_back,
                color: widget.carDataModel.fontColor,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleContainer(
                EdgeInsets.only(top: 20, left: 16),
                widget.carDataModel.title,
                48.0,
                widget.carDataModel.fontColor),
            TitleContainer(
                EdgeInsets.only(
                  left: 16,
                  top: 10,
                ),
                "",
                20.0,
                widget.carDataModel.fontColor),
            TitleContainer(
                EdgeInsets.only(left: 16),
                widget.carDataModel.company,
                20.0,
                widget.carDataModel.fontColor),
            Stack(
              children: <Widget>[
                widget.carDataModel.heroTag == "image_car"
                    ? My360Image(counter: _counter)
                    : SingleImage(widget.carDataModel.imageUrl,
                    widget.carDataModel.heroTag),
                widget.carDataModel.heroTag == "image_car"
                    ? Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 190),
                  child: Slider(
                    value: _counter.toDouble(),
                    min: 0.0,
                    max: 15.0,
                    activeColor: Colors.black,
                    inactiveColor: Colors.black,
                    onChanged: (double newValue) {
                      setState(() {
                        _counter = newValue.toInt();
                      });
                    },
                  ),
                )
                    : Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 190),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PriceContainer(widget.carDataModel.price, widget.carDataModel.fontColor),
                    BookBtn()
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FeatureCard("speed", "Speed", widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
                FeatureCard("engine", "AWD", widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
                FeatureCard("fule", "Fule", widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
                FeatureCard("power", "Power", widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FeatureCard("airbag", "Airbag", widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
                FeatureCard(
                    "batterytype",
                    "Battery",
                    widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
                FeatureCard(
                    "steeringwheel",
                    "Steering",
                    widget.carDataModel.isWhite,
                    widget.carDataModel.fontColor),
              ],
            ),
          ],
        ),
    );
  }
}

class BookBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(1.0, 1.0),
      height: 55,
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
    );
  }



}
