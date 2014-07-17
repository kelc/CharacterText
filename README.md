##CharacterText

**UILabel subclass to perform text effects**
Based as example for https://swiftyeti.com/texteffects-with-nslayoutmanager
=============

<br/>

CharacterText uses NSLayoutManager to position CATextLayers for each glyph in your string. This gives you the power to create some neat text effect using all the attributes of CATextLayer.

CharacterText is inspired from Secret & the new iOS8 autocomplete effect.

## Usage

CharacterLabel can be used in place of UILabel.

You can subclass CharacterLabel to then create your own animations. Three examples are provided: FallingLabel, FadingLabel, and MotionLabel.

FallingLabel:
[![FallingLabel](https://swiftyeti.com/content/images/2014/Jul/fallingLabel-1.gif)](https://swiftyeti.com/texteffects-with-nslayoutmanager)

FadingLabel:
[![FadingLabel](https://swiftyeti.com/content/images/2014/Jul/Secret_reimagined.gif)](https://swiftyeti.com/texteffects-with-nslayoutmanager)

MotionLabel:
[![MotionLabel](https://swiftyeti.com/content/images/2014/Jul/motionLabel.gif)](https://swiftyeti.com/texteffects-with-nslayoutmanager)
