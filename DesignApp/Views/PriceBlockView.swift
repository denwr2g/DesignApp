//
//  PriceBlockView.swift
//  DesignApp
//
//  Created by deniss.lobacs on 15/03/2022.
//

import UIKit
import SwiftUI

struct BestInClassPreviews_Previews3: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let view = PriceBlockView()
            return view
        }
        .previewInterfaceOrientation(.portrait)
        .previewLayout(.sizeThatFits)
    }
}


class PriceBlockView: UIView {
    
    var topView = UIView()
    var bottomView = UIView()
    var stackView = UIStackView()
    var verticalStackViewForBottom = UIStackView()
    var text1 = UILabel()
    var text2 = UILabel()
    var verticalStackViewForTop = UIStackView()
    var text3 = UILabel()
    var text4 = UILabel()
    var text5 = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addStackView()
        addTopView()
        addBottomView()
        addVerticalStackViewForBottom()
        addText1()
        addText2()
        addVerticalStackViewForTop()
        addText3()
        addText4()
        addText5()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension PriceBlockView {
    
    func addStackView() {
        addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 3
        
        stackView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(200)
            make.center.equalToSuperview()
        }
    }
    
    func addTopView() {
        stackView.addArrangedSubview(topView)
        topView.backgroundColor = .darkGray
        
        topView.snp.makeConstraints { make in
            make.height.greaterThanOrEqualTo(130)
        }
    }
    
    func addBottomView() {
        stackView.addArrangedSubview(bottomView)
        bottomView.backgroundColor = .darkGray
        
        bottomView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
    }
    
    func addVerticalStackViewForBottom() {
        bottomView.addSubview(verticalStackViewForBottom)
        
        verticalStackViewForBottom.addArrangedSubview(text1)
        verticalStackViewForBottom.addArrangedSubview(text2)
        
        verticalStackViewForBottom.axis = .vertical
        verticalStackViewForBottom.alignment = .center
        
        verticalStackViewForBottom.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    func addText1() {
        text1.text = "4 500 RUB"
    }
    
    func addText2() {
        text2.text = "MONTH"
        text2.font = UIFont(name: "Arial", size: 13)?.bold()

    }
    
    func addVerticalStackViewForTop() {
        topView.addSubview(verticalStackViewForTop)
        
        verticalStackViewForTop.addArrangedSubview(text3)
        verticalStackViewForTop.addArrangedSubview(text4)
        verticalStackViewForTop.addArrangedSubview(text5)

        verticalStackViewForTop.axis = .vertical
        verticalStackViewForTop.alignment = .center
        
        verticalStackViewForTop.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    func addText3() {
        text3.text = "1"
    }
    
    func addText4() {
        text4.text = "MONTH"
    }
    
    func addText5() {
        text5.font = UIFont(name: "Arial", size: 12)?.bold()
        text5.text = "50 RUB / WEEK"
    }

 
    
}
