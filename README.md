# UITextViewBug

## Overview

This is a peared down example app to show a current problem with UITextView displaying Attributed Text between iPad Retina and iPad non-Retina devices.

The code is very very simple and only tries to set the lineheight to the attributed text of the UITextView.

Unfortunately, the desired output only displays properly on iPad non-Retina. When the same app is executed on a Retina display the attributed text is over-written by a default set, and the output is returned to system defaults.

## Screenshots

![Non Retina Output](https://dl.dropboxusercontent.com/u/1664725/non-retina.png)

![Retina Output](https://dl.dropboxusercontent.com/u/1664725/retina.png)

## Log

__Non Retina Output__

	Font Attributes: Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.
	{
    	NSColor = "UIDeviceRGBColorSpace 0 0 0 1";
    	NSFont = "<UICFFont: 0x714c930> font-family: \"Avenir-Roman\"; font-weight: normal; font-style: normal; font-size: 24px";
    	NSKern = 0;
    	NSParagraphStyle = "Alignment 4, LineSpacing 0, ParagraphSpacing 0, ParagraphSpacingBefore 0, HeadIndent 0, TailIndent 0, FirstLineHeadIndent 0, LineHeight 48/0, LineHeightMultiple 0, LineBreakMode 0, Tabs (\n), DefaultTabInterval 36, Blocks (null), Lists (null), BaseWritingDirection 0, HyphenationFactor 0, TighteningFactor 0, HeaderLevel 0";
    	NSStrokeColor = "UIDeviceRGBColorSpace 0 0 0 1";
    	NSStrokeWidth = 0;
	}

__Retina Output__

	Font Attributes: Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.
	{
    	NSColor = "UIDeviceRGBColorSpace 0 0 0 1";
    	NSFont = "<UICFFont: 0x71ed950> font-family: \"Helvetica\"; font-weight: normal; font-style: normal; font-size: 12px";
    	NSKern = 0;
    	NSParagraphStyle = "Alignment 4, LineSpacing 0, ParagraphSpacing 0, ParagraphSpacingBefore 0, HeadIndent 0, TailIndent 0, FirstLineHeadIndent 0, LineHeight 48/0, LineHeightMultiple 0, LineBreakMode 0, Tabs (\n), DefaultTabInterval 36, Blocks (null), Lists (null), BaseWritingDirection 0, HyphenationFactor 0, TighteningFactor 0, HeaderLevel 0";
    	NSStrokeColor = "UIDeviceRGBColorSpace 0 0 0 1";
    	NSStrokeWidth = 0;
	}
	{
    	NSColor = "UIDeviceRGBColorSpace 0 0 0 1";
    	NSFont = "<UICFFont: 0x71e67d0> font-family: \"Avenir-Roman\"; font-weight: normal; font-style: normal; font-size: 24px";
    	NSKern = 0;
    	NSParagraphStyle = "Alignment 4, LineSpacing 0, ParagraphSpacing 0, ParagraphSpacingBefore 0, HeadIndent 0, TailIndent 0, FirstLineHeadIndent 0, LineHeight 48/0, LineHeightMultiple 0, LineBreakMode 0, Tabs (\n), DefaultTabInterval 36, Blocks (null), Lists (null), BaseWritingDirection 0, HyphenationFactor 0, TighteningFactor 0, HeaderLevel 0";
    	NSStrokeColor = "UIDeviceRGBColorSpace 0 0 0 1";
    	NSStrokeWidth = 0;
	}
