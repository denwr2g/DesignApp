//
//  BackgroundView.swift
//  DesignApp
//
//  Created by deniss.lobacs on 15/03/2022.
//

import UIKit

class BackgroundView: UIView {

    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    var backgroundView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addBackgroundImage()
        addBackgroundView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension BackgroundView {
    
    func addBackgroundImage() {
        backgroundImage.image = UIImage(named: "bg")
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.clipsToBounds = true
        addSubview(backgroundImage)
        
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func addBackgroundView() {
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0.85
        addSubview(backgroundView)
        
        backgroundView.snp.makeConstraints { make in
            make.edges.equalTo(backgroundImage)
        }
    }
    
    
}
