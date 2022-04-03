import 'package:flutter/material.dart';
import 'package:flutter_sample/common/widget/network_image_error.dart';
import 'package:flutter_sample/data/model/about_country_response.dart';

class AboutCountryWidget extends StatelessWidget {
  final Rows _rows;

  const AboutCountryWidget(this._rows, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(_rows.imageHref ?? "",
                width: 100, height: 100, errorBuilder: imageErrorBuilder()),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(_rows.title ?? ""),
                  if (_rows.description != null)
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(_rows.description ?? "")),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
