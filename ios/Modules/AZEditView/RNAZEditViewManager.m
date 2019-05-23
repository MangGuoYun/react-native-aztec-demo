//
//  RNAZEditViewManager.m
//  ReactNativeAztecDemo
//
//  Created by 高昇 on 2019/5/22.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNAZEditViewManager, NSObject)

// 属性
RCT_EXPORT_VIEW_PROPERTY(text, NSString)
RCT_EXPORT_VIEW_PROPERTY(textColor, UIColor)

RCT_EXPORT_VIEW_PROPERTY(onFocus, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onBlur, RCTBubblingEventBlock)

// 方法
RCT_EXTERN_METHOD(setHTML:(nonnull NSNumber *)node html:(nonnull NSString *)html)
RCT_EXTERN_METHOD(getText:(nonnull NSNumber *)node callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(getHTML:(nonnull NSNumber *)node prettify:(BOOL)prettify callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(insertText:(nonnull NSNumber *)node text:(nonnull NSString *)text)

@end

