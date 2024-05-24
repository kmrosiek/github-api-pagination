import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgPictureNetwork extends StatelessWidget {
  const SvgPictureNetwork(
      {super.key,
      required this.url,
      this.errorWidget,
      this.width,
      this.height});
  final String url;
  final Widget? errorWidget;
  final double? width;
  final double? height;

  Future<Widget> _futureSvgOrError(
      Widget errorWidget, String svgAssetUrl) async {
    try {
      final svgAsset = await _fetchSvg(svgAssetUrl);
      return SvgPicture.string(svgAsset, width: width, height: height);
    } catch (e) {
      debugPrint('WARN: Error occured while loading asset $svgAssetUrl: $e');
      return errorWidget;
    }
  }

  Future<dynamic> _fetchSvg(String url) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(url);
      return response.data;
    } catch (error) {
      throw Exception('Failed to load data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureSvgOrError(errorWidget ?? const Text('Error'), url),
      builder: (context, snapshot) {
        return snapshot.hasData ? snapshot.data! : const SizedBox();
      },
    );
  }
}
