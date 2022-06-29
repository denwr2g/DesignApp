//
//  CustomButton.swift
//  DesignApp
//
//  Created by deniss.lobacs on 17/03/2022.
//

import Foundation
import UIKit

final class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let offset:    CGFloat = 20
        let fillColor: UIColor = .blue
        
        path.move(to: CGPoint(x: bounds.minX + offset, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX - offset, y: bounds.maxY))
        path.addLine(to: CGPoint(x: bounds.minX, y: bounds.maxY))

        path.close()
        fillColor.setFill()
        path.fill()
    }
    
}
