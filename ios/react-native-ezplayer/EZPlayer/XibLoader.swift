//
//  XibLoader.swift
//  react-native-ezplayer
//
//  Created by Allen on 2023/11/10.
//  Copyright © 2023 Zhu yangjun. All rights reserved.
//

import UIKit

public class XibLoader {
    
    public static func loadXibBudle() -> Bundle? {
            let filePath = Bundle.main.path(forResource: "EZPlayerBundle", ofType: "bundle")
            let bundle = Bundle(path: filePath!)
            return bundle
        }

    public static func loadViewFromXib(xibName: String, owner: Any? = nil, options: [UINib.OptionsKey: Any]? = nil) -> UIView? {
            let bundle = loadXibBudle()
            let nib = UINib(nibName: xibName, bundle: bundle)
            return nib.instantiate(withOwner: owner, options: options).first as? UIView
        }

    public static func loadImageBudle() -> Bundle? {
            let filePath = Bundle.main.path(forResource: "EZPlayerImageBundle", ofType: "bundle")
            let bundle = Bundle(path: filePath!)
            return bundle
        }
}
