import 'cardatamodel.dart';
import 'package:flutter/material.dart';

List<CarDataModel> cardListData = [
  CarDataModel(
    imageUrl:'discover.png',
    title: 'KICKS™',
    company:'Nissan',
    price:'18,640',
    cardColor:Colors.grey[500],
    heroTag: 'discover',
    isWhite:true,
    fontColor: Colors.white,
    heroCard:'kicks', ),
  CarDataModel(
    imageUrl:'bmw.gif',
    title: 'BMW i8™',
    company:'BMW',
    price:'149,900',
    cardColor:Colors.white,
    heroTag: 'image_car',
    isWhite:false,
    fontColor: Colors.black,
    heroCard:'bmw', ),
  CarDataModel(
    imageUrl:'chevrolet.png',
    title: 'Corvette™',
    company:'Chevrolet',
    price:'65,095',
    cardColor:Colors.grey[850],
    heroTag: 'chevrolet',
    isWhite:true,
    fontColor: Colors.white,
    heroCard:'cherv', ),
  CarDataModel(
    imageUrl:'aston_martin.png',
    title:'Vantage(18)',
    company:'Aston Martin',
    price:'149,995',
    cardColor:Colors.orange[900],
    heroTag:'aston_martin',
    isWhite: true,
    fontColor:Colors.white,
    heroCard:'aston',
   ),
  CarDataModel(
    imageUrl:'lamborghini.png',
    title: 'Urus',
    company:'Lamborghini',
    price:'203,674',
    cardColor:Colors.red[900],
    heroTag:'lamborghini',
    isWhite:true,
    fontColor:Colors.white,
    heroCard:'lambor',
  )

];

