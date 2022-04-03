import 'package:flutter/material.dart';
import 'package:flutter_sample/common/constant/strings.dart';

ImageErrorWidgetBuilder imageErrorBuilder() {
  return (BuildContext context, Object error, StackTrace? stackTrace) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(noImageFound),
    );
  };
}
