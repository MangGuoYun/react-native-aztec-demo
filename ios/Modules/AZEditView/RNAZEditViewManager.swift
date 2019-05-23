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
    let view = Aztec.TextView(defaultFont: UIFont.systemFont(ofSize: 16), defaultMissingImage: UIImage.init());
    return view;
    
//    let view = Aztec.EditorView(defaultFont: UIFont.systemFont(ofSize: 16), defaultHTMLFont: UIFont.systemFont(ofSize: 16), defaultParagraphStyle: ParagraphStyle.default, defaultMissingImage: UIImage.init())
//    view.isScrollEnabled = false
//    return view
  }
  
  @objc
  func setHTML(_ node: NSNumber, html: String) {
    self.bridge.uiManager.addUIBlock { (manager, viewRegistry) in
      let view = viewRegistry?[node]
      guard let aztecView = view as? Aztec.TextView else {
        return
      }
      aztecView.setHTML(html);
    }
  }
  
}
