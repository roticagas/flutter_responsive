import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveSize {
  static var sm = 576;
  static var md = 768;
  static var lg = 992;
  static var xl = 1200;
  static var xxl = 1400;

  static var sm4 = 104;
  static var sm6 = 106;
  static var sm12 = 112;
  static var smList = [sm4, sm6, sm12];
  static var md4 = 204;
  static var md6 = 206;
  static var md12 = 212;
  static var mdList = [md4, md6, md12];
  static var lg4 = 304;
  static var lg6 = 306;
  static var lg12 = 312;
  static var lgList = [lg4, lg6, lg12];
  static var xl4 = 404;
  static var xl6 = 406;
  static var xl12 = 412;
  static var xlList = [xl4, xl6, xl12];
  static var xxl4 = 504;
  static var xxl6 = 506;
  static var xxl12 = 512;
  static var xxlList = [xxl4, xxl6, xxl12];
}

class ResponsiveWidget extends StatelessWidget {
  final Widget? child;
  final List<int>? classes;

  const ResponsiveWidget({Key? key, this.child, this.classes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("Get.context?.size ${Get.context?.size}");
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print("$constraints");
      print(
          "maxWidth=${constraints.maxWidth}, maxHeight=${constraints.maxHeight}");
      print(
          "minWidth=${constraints.minWidth}, minHeight=${constraints.minHeight}");

      // print("Get.context?.devicePixelRatio ${Get.context?.devicePixelRatio}");
      // print("Get.context?.size ${Get.context?.size}");
      print('MediaQuery.of(context).size ${MediaQuery.of(context).size}');
      var width = MediaQuery.of(context).size.width;
      var sss = ResponsiveSize.xxl;
      if (width <= ResponsiveSize.xl) {
        sss = ResponsiveSize.xl;
      }
      if (width <= ResponsiveSize.lg) {
        sss = ResponsiveSize.lg;
      }
      if (width <= ResponsiveSize.md) {
        sss = ResponsiveSize.md;
      }
      if (width <= ResponsiveSize.sm) {
        sss = ResponsiveSize.sm;
      }
      if (classes?.isEmpty ?? true) {
        return child ?? Container();
      }
      print("classes $classes width=$width sss=$sss");
      if (sss == ResponsiveSize.sm &&
          ResponsiveSize.smList
              .toSet()
              .intersection((classes ?? []).toSet())
              .isNotEmpty) {
        var n = 12;
        if (classes?.contains(ResponsiveSize.sm4) ?? false) n = 4;
        if (classes?.contains(ResponsiveSize.sm6) ?? false) n = 6;
        if (classes?.contains(ResponsiveSize.sm12) ?? false) n = 12;
        var w = (width * n / 12.0) - 8;
        return Container(width: w, child: child ?? Container(width: w));
      }
      if (sss == ResponsiveSize.md &&
          ResponsiveSize.mdList
              .toSet()
              .intersection((classes ?? []).toSet())
              .isNotEmpty) {
        var n = 12;
        if (classes?.contains(ResponsiveSize.md4) ?? false) n = 4;
        if (classes?.contains(ResponsiveSize.md6) ?? false) n = 6;
        if (classes?.contains(ResponsiveSize.md12) ?? false) n = 12;
        var w = (width * n / 12.0) - 8;
        return Container(width: w, child: child ?? Container(width: w));
      }
      if (sss == ResponsiveSize.lg &&
          ResponsiveSize.lgList
              .toSet()
              .intersection((classes ?? []).toSet())
              .isNotEmpty) {
        var n = 12;
        if (classes?.contains(ResponsiveSize.lg4) ?? false) n = 4;
        if (classes?.contains(ResponsiveSize.lg6) ?? false) n = 6;
        if (classes?.contains(ResponsiveSize.lg12) ?? false) n = 12;
        var w = (width * n / 12.0) - 8;
        return Container(width: w, child: child ?? Container(width: w));
      }
      if (sss == ResponsiveSize.xl &&
          ResponsiveSize.xlList
              .toSet()
              .intersection((classes ?? []).toSet())
              .isNotEmpty) {
        var n = 12;
        if (classes?.contains(ResponsiveSize.xl4) ?? false) n = 4;
        if (classes?.contains(ResponsiveSize.xl6) ?? false) n = 6;
        if (classes?.contains(ResponsiveSize.xl12) ?? false) n = 12;
        var w = (width * n / 12.0) - 8;
        return Container(width: w, child: child ?? Container(width: w));
      }
      if (sss == ResponsiveSize.xxl &&
          ResponsiveSize.xxlList
              .toSet()
              .intersection((classes ?? []).toSet())
              .isNotEmpty) {
        var n = 12;
        if (classes?.contains(ResponsiveSize.xxl4) ?? false) n = 4;
        if (classes?.contains(ResponsiveSize.xxl6) ?? false) n = 6;
        if (classes?.contains(ResponsiveSize.xxl12) ?? false) n = 12;
        var w = (width * n / 12.0) - 8;
        return Container(width: w, child: child ?? Container(width: w));
      }
      return child ?? Container();
    });
  }
}
