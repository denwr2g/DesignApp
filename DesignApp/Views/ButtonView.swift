//
//  ButtonView.swift
//  DesignApp
//
//  Created by deniss.lobacs on 17/03/2022.
//

import UIKit
import SwiftUI

struct ButtonViewPreview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let view = ButtonView()
            return view
        }
        .previewInterfaceOrientation(.portrait)
        .previewLayout(.sizeThatFits)
    }
}


class ButtonView: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let offset:    CGFloat = 60
        let fillColor: UIColor = .red
        
        path.move(to: CGPoint(x: bounds.minX + offset, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX - offset, y: bounds.maxY))
        path.addLine(to: CGPoint(x: bounds.minX, y: bounds.maxY))

        path.close()
        fillColor.setFill()
        path.fill()
    }

}

