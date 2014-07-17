//
//  CATextLayerExtensions.swift
//  CharacterText
//
//  Created by Andrew Hulsizer on 6/26/14.
//  Copyright (c) 2014 Swift Yeti. All rights reserved.
//

import QuartzCore

extension CATextLayer {
    convenience init(frame: CGRect, string: NSAttributedString) {
        self.init();
        self.frame = CGRectIntegral(frame);
        self.string = string;
    }
}