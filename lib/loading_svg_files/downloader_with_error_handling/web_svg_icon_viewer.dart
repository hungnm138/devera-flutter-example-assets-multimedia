import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'svg_file_downloader.dart';

class WebSvgIconViewer extends StatefulWidget {
  const WebSvgIconViewer();

  @override
  _WebSvgIconViewerState createState() => _WebSvgIconViewerState();
}

class _WebSvgIconViewerState extends State<WebSvgIconViewer> {
  late SvgFileDownloader _svgFileDownloader;
  late Future<List<int>> _svgImageFuture;

  @override
  void initState() {
    super.initState();
    _svgFileDownloader =
        SvgFileDownloader("uploads/2020/03/file_example_SVG_30kB.svg");
    _svgImageFuture = _svgFileDownloader.startDownload();
  }

  @override
  Widget build(BuildContext context) {
    // The StatefulWidget is required because we don't want the FutureBuilder
    // to perform the download invocation many times -- by means of the 'initState()'
    // method, we can make sure the request is carried out only once
    // CAUTION: This pattern ALWAYS applies when working with Futures!
    return Center(
      child: FutureBuilder(
        future: _svgImageFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              return SvgPicture.memory(
                Uint8List.fromList(snapshot.data as List<int>),
                placeholderBuilder: (_) => const CircularProgressIndicator(),
              );
            } else {
              return _ErrorWidget();
            }
          }

          if (snapshot.hasError) {
            return _ErrorWidget();
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Icon(Icons.error_outline);
}
