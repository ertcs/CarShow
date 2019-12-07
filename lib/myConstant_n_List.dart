

const List<String> _safety = [
  "Airbags",
  "Passenger Airbags",
  "Side Airbags",
  "ABS",
  "Electronic Brakeforce Distribution",
  "Brake Assist",
  "Hill Assist",
  "Electronic Stability Program",
  "Tractional Control",
  "Engine Immobilizer",
  "Central Locking",
  "Child Safety Lock",
  "Power Door Lock",
  "Automatic Headlamps",
  "Turn Indicators On ORVM",
  "Rain Sensing Wipers",
  "Headlamp Beam Adjuster"
];

//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 10;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white,
//      appBar: AppBar(
//        backgroundColor: Colors.transparent,
//        elevation: 0.0,
//        leading: Container(
//          child: Icon(
//            Icons.arrow_back,
//            color: Colors.black,
//          ),
//        ),
//      ),
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        mainAxisSize: MainAxisSize.max,
//        children: <Widget>[
//          TitleContainer(EdgeInsets.only(top: 10, left: 16), "BMW i8", 48.0),
//          TitleContainer(
//              EdgeInsets.only(left: 16), "Plug-in hybrid sports car", 20.0),
//          TitleContainer(EdgeInsets.only(left: 16), "BMW", 20.0),
//          Stack(
//            children: <Widget>[
//              my360Image(counter: _counter),
//              Padding(
//                padding:
//                const EdgeInsets.only(left: 20.0, right: 20.0, top: 200),
//                child: Slider(
//                  value: _counter.toDouble(),
//                  min: 0.0,
//                  max: 15.0,
//                  activeColor: Colors.black,
//                  inactiveColor: Colors.black,
//                  onChanged: (double newValue) {
//                    setState(() {
//                      _counter = newValue.toInt();
//                    });
//                  },
//                ),
//              ),
//              MyBookBtn(const EdgeInsets.only(left: 250, top: 250)),
//              PriceContainer(),
//            ],
//          ),
//          SizedBox(
//            height: 10.0,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              FeatureCard("speed", "Speed"),
//              FeatureCard("engine", "AWD"),
//              FeatureCard("fule", "Fule"),
//              FeatureCard("power", "Power"),
//            ],
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              FeatureCard("carlock", "Carlock"),
//              FeatureCard("airbag", "Airbag"),
//              FeatureCard("batterytype", "Battery"),
//              FeatureCard("steeringwheel", "Steering"),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}