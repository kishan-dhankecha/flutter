// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// TODO(yjbanov): rename this file to web_only_api.dart.
//                https://github.com/flutter/flutter/issues/100394
//                Rather than extending this file with new APIs, we
//                should instead use js interop.

// This file contains extra web-only API that non-web engines do not have.
//
// Why have web-only API?
//
// Because all Dart code is compiled (and tree shaken) as a single compilation
// unit it only has one entry-point - the `main()` function of the Flutter
// app. The top-level `main()` is generated by Flutter tool and it needs to
// ask the engine to initialize itself before calling the handwritten `main()`
// function of the app itself. To do that, it needs something to call. The
// mobile engine doesn't provide a function like that because the application
// starts from the Java (Android) or Objective-C (iOS). Any initial
// configuration can be done in Java and the engine's C++ code prior to
// calling Dart's `main()`.

part of ui;

// TODO(mdebbar): Deprecate this and remove it.
// https://github.com/flutter/flutter/issues/127395
Future<void> webOnlyWarmupEngine({VoidCallback? registerPlugins, VoidCallback? runApp}) {
  assert(() {
    engine.printWarning(
      'The webOnlyWarmupEngine API is deprecated and will be removed in a '
      'future release. Please use `bootstrapEngine` from `dart:ui_web` instead.',
    );
    return true;
  }());
  return ui_web.bootstrapEngine(registerPlugins: registerPlugins, runApp: runApp);
}

// TODO(mdebbar): Deprecate this and remove it.
// https://github.com/flutter/flutter/issues/127395
bool get debugEmulateFlutterTesterEnvironment {
  assert(() {
    engine.printWarning(
      'The debugEmulateFlutterTesterEnvironment getter is deprecated and will '
      'be removed in a future release. Please use '
      '`debugEmulateFlutterTesterEnvironment` from `dart:ui_web` instead.',
    );
    return true;
  }());
  return ui_web.debugEmulateFlutterTesterEnvironment;
}

// TODO(mdebbar): Deprecate this and remove it.
// https://github.com/flutter/flutter/issues/127395
set debugEmulateFlutterTesterEnvironment(bool value) {
  assert(() {
    engine.printWarning(
      'The debugEmulateFlutterTesterEnvironment setter is deprecated and will '
      'be removed in a future release. Please use '
      '`debugEmulateFlutterTesterEnvironment` from `dart:ui_web` instead.',
    );
    return true;
  }());
  ui_web.debugEmulateFlutterTesterEnvironment = value;
}

// TODO(mdebbar): Deprecate this and remove it.
// https://github.com/flutter/flutter/issues/127395
ui_web.AssetManager get webOnlyAssetManager {
  assert(() {
    engine.printWarning(
      'The webOnlyAssetManager getter is deprecated and will be removed in a '
      'future release. Please use `assetManager` from `dart:ui_web` instead.',
    );
    return true;
  }());
  return ui_web.assetManager;
}

// TODO(mdebbar): Deprecate this and remove it.
// https://github.com/flutter/flutter/issues/127395
void webOnlySetPluginHandler(PlatformMessageCallback handler) {
  assert(() {
    engine.printWarning(
      'The webOnlySetPluginHandler API is deprecated and will be removed in a '
      'future release. Please use `setPluginHandler` from `dart:ui_web` instead.',
    );
    return true;
  }());
  ui_web.setPluginHandler(handler);
}

// TODO(mdebbar): Deprecate this and remove it.
// https://github.com/flutter/flutter/issues/127395
ui_web.PlatformViewRegistry get platformViewRegistry {
  assert(() {
    engine.printWarning(
      'The platformViewRegistry getter is deprecated and will be removed in a '
      'future release. Please import it from `dart:ui_web` instead.',
    );
    return true;
  }());
  return ui_web.platformViewRegistry;
}
