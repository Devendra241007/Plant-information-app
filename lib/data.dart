import 'package:flutter/services.dart';
import 'package:xml/xml.dart';

Future<List<String>> loadDescriptionsFromXml() async {
  final xmlString = await rootBundle.loadString('assets/data/plantdata.xml');
  final document = XmlDocument.parse(xmlString);

  final descriptionList = document.findAllElements('description');
  return descriptionList.map((node) => node.text.trim()).toList();
}


Future<List<String>> loadPopularDescriptionsFromXml() async {
  final xmlString = await rootBundle.loadString('assets/data/populars.xml');
  final document = XmlDocument.parse(xmlString);

  final populardescriptionList = document.findAllElements('description');
  return populardescriptionList.map((node) => node.text.trim()).toList();
}

Future<List<String>> loadRareDescriptionsFromXml() async {
  final xmlString = await rootBundle.loadString('assets/data/rareplant.xml');
  final document = XmlDocument.parse(xmlString);
  final populardescriptionList = document.findAllElements('description');
  return populardescriptionList.map((node) => node.text.trim()).toList();
}