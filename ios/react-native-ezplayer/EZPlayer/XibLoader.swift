//
//  XibLoader.swift
//  react-native-ezplayer
//
//  Created by Allen on 2023/11/10.
//  Copyright © 2023 Zhu yangjun. All rights reserved.
//

import UIKit

public class XibLoader {

    public static func loadViewFromXib(xibName: String, owner: Any? = nil, options: [UINib.OptionsKey: Any]? = nil) -> UIView? {
        let bundle = Bundle(for: XibLoader.self)
        let nib = UINib(nibName: xibName, bundle: bundle)
        return nib.instantiate(withOwner: owner, options: options).first as? UIView
    }

}
