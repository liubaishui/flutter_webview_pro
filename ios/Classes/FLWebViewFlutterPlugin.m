// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "FLWebViewFlutterPlugin.h"
#import "FLCookieManager.h"
#import "FlutterWebView.h"

@implementation FLWebViewFlutterPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FLWebViewFactory* mywebviewFactory =
      [[FLWebViewFactory alloc] initWithMessenger:registrar.messenger];
  [registrar registerViewFactory:mywebviewFactory withId:@"plugins.flutter.io/webviewpro"];
  [FLCookieManager registerWithRegistrar:registrar];
}

@end
