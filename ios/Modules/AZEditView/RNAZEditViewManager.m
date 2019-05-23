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

// 方法
RCT_EXTERN_METHOD(setHTML:(nonnull NSNumber *)node html:(nonnull NSString *)html)

@end
