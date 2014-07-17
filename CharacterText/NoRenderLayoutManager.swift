//
//  NoRenderLayoutManager.swift
//  CharacterText
//
//  Created by Andrew Hulsizer on 6/26/14.
//  Copyright (c) 2014 Swift Yeti. All rights reserved.
//

import UIKit

class NoRenderLayoutManager: NSLayoutManager {
    override func drawGlyphsForGlyphRange(glyphsToShow: NSRange, atPoint: CGPoint)
    {
        //No code to eliminate rendering
    }
}
