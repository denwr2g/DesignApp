//
//  Extenstion+UIFont.swift
//  DesignApp
//
//  Created by deniss.lobacs on 15/03/2022.
//

import Foundation
import UIKit

extension UIFont {
    private func withTraits(traits:UIFontDescriptor.SymbolicTraits) -> UIFont {
        let descriptor = fontDescriptor.withSymbolicTraits(traits)
        return UIFont(descriptor: descriptor!, size: 0) //size 0 means keep the size as it is
    }

    func boldItalic() -> UIFont {
        return withTraits(traits: [.traitBold, .traitItalic] )
    }
    
    func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
}
