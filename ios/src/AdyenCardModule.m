//
// Copyright (c) 2021 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//


#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTViewManager.h>


@interface RCT_EXTERN_MODULE(AdyenCard, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(config, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(onHeightChange, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onDataChange, RCTBubblingEventBlock)

@end

