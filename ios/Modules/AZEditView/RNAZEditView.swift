//
//  RNAZEditView.swift
//  ReactNativeAztecDemo
//
//  Created by 高昇 on 2019/5/23.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
import Aztec

class RNAZEditView: Aztec.TextView {
  @objc var onFocus: RCTBubblingEventBlock? = nil;
  @objc var onBlur: RCTBubblingEventBlock? = nil;
  
  override init(defaultFont: UIFont, defaultParagraphStyle: ParagraphStyle = ParagraphStyle.default, defaultMissingImage: UIImage) {
    super.init(defaultFont: defaultFont, defaultParagraphStyle: defaultParagraphStyle, defaultMissingImage: defaultMissingImage);
    commonInit();
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
    commonInit();
  }
  
  func commonInit() {
    delegate = self;
    keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag;
  }
}


extension RNAZEditView: UITextViewDelegate {
  func textViewDidBeginEditing(_ textView: UITextView) {
    onFocus?([:]);
  }
  
  func textViewDidEndEditing(_ textView: UITextView) {
    onBlur?([:]);
  }
}
