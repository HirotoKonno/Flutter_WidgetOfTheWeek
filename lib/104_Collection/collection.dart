import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void collectionSample() {
  final listA = [1, 2, 3, 4, 5];
  final listB = [1, 2, 3, 4, 5];

  if (kDebugMode) {
    print('listA == listB ${listA == listB}');
  } //false
  if (kDebugMode) {
    print('listEquals(listA, listB) ${listEquals(listA, listB)}');
  } //true

  final setA = {'A', 'B', 'C'};
  final setB = {'A', 'B', 'C'};

  if (kDebugMode) {
    print('setA == setB ${setA == setB}');
  } //false
  if (kDebugMode) {
    print('setEquals(setA, setB) ${setEquals(setA, setB)}');
  } //true

  final mapA = {1: 'A', 2: 'B', 3: 'C'};
  final mapB = {1: 'A', 2: 'B', 3: 'C'};

  if (kDebugMode) {
    print('mapA == mapB ${mapA == mapB}');
  } //false
  if (kDebugMode) {
    print('mapEquals(mapA, mapB) ${mapEquals(mapA, mapB)}');
  } //true
}
