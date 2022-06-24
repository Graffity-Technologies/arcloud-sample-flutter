import 'package:arcloud_sample_flutter/native_view_ios.dart';
import 'package:flutter/material.dart';

import 'native_view_android.dart';

class ARCloudWidget extends StatelessWidget {
  const ARCloudWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;

    // This is used in the platform side to register the view.
    const String viewType = 'arcloud_view';
    // Pass parameters to the platform side.
    const Map<String, dynamic> creationParams = <String, dynamic>{};

    switch (platform) {
      case TargetPlatform.android:
        return const AndroidARCloudWidget(
            viewType: viewType, creationParams: creationParams);
      case TargetPlatform.iOS:
        return const IOSARCloudWidget(
            viewType: viewType, creationParams: creationParams);
      default:
        throw UnsupportedError('Unsupported platform view');
    }
  }
}
