//
//  RNAZEditViewManager.swift
//  ReactNativeAztecDemo
//
//  Created by 高昇 on 2019/5/22.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
import Aztec

@objc (RNAZEditViewManager)
class RNAZEditViewManager: RCTViewManager {
  
  public override static func requiresMainQueueSetup() -> Bool {
    return true;
  }
  
  @objc
  public override func view() -> UIView {
    let view = RNAZEditView(defaultFont: UIFont.systemFont(ofSize: 16), defaultMissingImage: UIImage.init());
    return view;
  }
  
  @objc
  func setHTML(_ node: NSNumber, html: String) {
    self.bridge.uiManager.addUIBlock { (manager, viewRegistry) in
      let view = viewRegistry?[node]
      guard let aztecView = view as? RNAZEditView else {
        return
      }
      aztecView.setHTML(html);
    }
  }
  
  @objc
  func getHTML(_ node: NSNumber, prettify:Bool, callback:@escaping RCTResponseSenderBlock) {
    self.bridge.uiManager.addUIBlock { (manager, viewRegistry) in
      let view = viewRegistry?[node]
      guard let aztecView = view as? RNAZEditView else {
        return
      }
      let html = aztecView.getHTML(prettify: prettify);
      callback([NSNull.init(),html]);
    }
  }
  
  @objc
  func getText(_ node: NSNumber, callback:@escaping RCTResponseSenderBlock) {
    self.bridge.uiManager.addUIBlock { (manager, viewRegistry) in
      let view = viewRegistry?[node]
      guard let aztecView = view as? RNAZEditView else {
        return
      }
      let text = aztecView.text;
      callback([NSNull.init(),text as Any]);
    }
  }
  
  @objc
  func insertText(_ node: NSNumber, text: String) {
    self.bridge.uiManager.addUIBlock { (manager, viewRegistry) in
      let view = viewRegistry?[node]
      guard let aztecView = view as? RNAZEditView else {
        return
      }
      aztecView.insertText(text);
    }
  }
  
}
