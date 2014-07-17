//
//  CharacterTextView.swift
//  CharacterText
//
//  Created by Andrew Hulsizer on 6/26/14.
//  Copyright (c) 2014 Swift Yeti. All rights reserved.
//

import UIKit
import QuartzCore

class CharacterTextView: UITextView, NSLayoutManagerDelegate {
    var characterTextLayers = Array<CALayer>()
    let noRenderLayoutManger = NoRenderLayoutManager()
    
    init(frame: CGRect, textContainer: NSTextContainer!) {
        super.init(frame: frame, textContainer: textContainer);
        setupLayoutManager();
    }
    
    override func awakeFromNib()  {
        super.awakeFromNib();
        setupLayoutManager();
    }
    
    func setupLayoutManager() {
        textStorage.addLayoutManager(noRenderLayoutManger);
        noRenderLayoutManger.addTextContainer(textContainer);
        noRenderLayoutManger.delegate = self;
        noRenderLayoutManger.invalidateLayoutForCharacterRange(NSMakeRange(0, self.attributedText.length), actualCharacterRange: nil);
    }
    
    func layoutManager(layoutManager: NSLayoutManager!, didCompleteLayoutForTextContainer textContainer: NSTextContainer!, atEnd layoutFinishedFlag: Bool) {
        calculateTextLayers();
    }

    func calculateTextLayers() {
        cleanOutCharacterTextLayers();
        
        let wordRange = NSMakeRange(0, self.attributedText.length);
        for var index = wordRange.location; index < wordRange.length+wordRange.location; index += 0 {
            let glyphRange = NSMakeRange(index, 1);
            let characterRange = layoutManager.characterRangeForGlyphRange(glyphRange, actualGlyphRange:nil);
            let textContainer = layoutManager.textContainerForGlyphAtIndex(index, effectiveRange: nil);
            var glyphRect = layoutManager.boundingRectForGlyphRange(glyphRange, inTextContainer: textContainer);
            var location = layoutManager.locationForGlyphAtIndex(index);
            
            glyphRect.origin.y += location.y-(glyphRect.height/2);
            var textLayer = CATextLayer();
            
            layer.addSublayer(textLayer);
            characterTextLayers.append(textLayer);
            
            let stepGlyphRange = layoutManager.glyphRangeForCharacterRange(characterRange, actualCharacterRange:nil);
            index += stepGlyphRange.length;
        }
    }
    
    func cleanOutCharacterTextLayers() {
        //Remove all text layers from the superview
        for textLayer in characterTextLayers {
            textLayer.removeFromSuperlayer();
        }
        //clean out the text layer
        characterTextLayers.removeAll(keepCapacity: false);
    }
}
