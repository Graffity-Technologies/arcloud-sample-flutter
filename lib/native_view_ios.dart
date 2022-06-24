import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IOSARCloudWidget extends StatelessWidget {
  final String viewType;
  final Map<String, dynamic> creationParams;

  const IOSARCloudWidget({
    super.key,
    required this.viewType,
    required this.creationParams,
  });

  @override
  Widget build(BuildContext context) {
    return UiKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
