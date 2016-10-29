//
//  NOLabel.swift
//  Borsen
//
//  Created by Kasper Welner on 20/11/14.
//  Copyright (c) 2014 Nodes All rights reserved.
//

import UIKit
import Serializable
import Alamofire

internal func translationString(_ keyPath: String) -> String? {
	if keyPath.characters.count == 0 {
		return nil;
	}
	
    let langDict = TranslationManager.sharedInstance.savedTranslationsDict() as NSDictionary
	return langDict.value(forKeyPath: keyPath) as? String;
}

@IBDesignable open class NOTextView: UITextView {
	
    @IBInspectable open var translationsKeyPath: NSString = ""
    
	override open func awakeFromNib() {
		updateFromLang()
	}
	
	func updateFromLang() {
		let oldSelectable = self.isSelectable
        let string = translationString(translationsKeyPath as String)
		if ( string != nil ) {
			self.isSelectable = true
			self.text = string
			self.isSelectable = oldSelectable
		}
	}
}

@IBDesignable open class NOTextField: UITextField {
	
	@IBInspectable open var placeholderTranslationsKeyPath: NSString = ""
	
	override open func awakeFromNib() {
		updateFromLang()
	}
	
	func updateFromLang() {
		let string = translationString(placeholderTranslationsKeyPath as String)
		if ( string != nil ) {
			self.placeholder = string
		}
	}
}

@IBDesignable open class NOButton: UIButton {
	@IBInspectable open var translationsKeyPath: NSString = ""
	
	override open func awakeFromNib() {
		updateFromLang()
	}
	
	func updateFromLang() {
		let string = translationString(translationsKeyPath as String)
		if ( string != nil ) {
			self.setTitle(string, for: UIControlState())
		}
	}
}

@IBDesignable open class NOSegmentControl : UISegmentedControl  {
	
	@IBInspectable open var translationKeyPath1 = ""
	@IBInspectable open var translationKeyPath2 = ""
	@IBInspectable open var translationKeyPath3 = ""
	@IBInspectable open var translationKeyPath4 = ""
	
	override open func awakeFromNib() {
		updateFromLang()
	}
	
	func updateFromLang() {
		
		if(self.numberOfSegments > 0) {
			let string1 = translationString(translationKeyPath1)
			if let string1 = string1 {
				self.setTitle(string1, forSegmentAt: 0)
			}
		}
		
		if(self.numberOfSegments > 1) {
			let string2 = translationString(translationKeyPath2)
			if ( string2 != nil ) {
				self.setTitle(string2, forSegmentAt: 1)
			}
		}
		
		if(self.numberOfSegments > 2) {
			let string3 = translationString(translationKeyPath3)
			if ( string3 != nil ) {
				self.setTitle(string3, forSegmentAt: 2)
			}
		}
		
		if(self.numberOfSegments > 3) {
			let string4 = translationString(translationKeyPath4)
			if ( string4 != nil ) {
				self.setTitle(string4, forSegmentAt: 3)
			}
		}
		
	}
}
