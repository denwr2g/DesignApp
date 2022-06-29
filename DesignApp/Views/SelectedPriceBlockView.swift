//
//  PriceBlockView.swift
//  DesignApp
//
//  Created by deniss.lobacs on 15/03/2022.
//

import UIKit
import SwiftUI

struct BestInClassPreviews_Previews4: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let view = SelectedPriceBlockView()
            return view
        }
        .previewInterfaceOrientation(.portrait)
        .previewLayout(.sizeThatFits)
    }
}


class SelectedPriceBlockView: UIView {
    
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
    var text6 = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addStackView()
        addTopView()
        addBottomView()
        addVerticalStackViewForTop()
        addText1()
        addText2()
        addText3()
        addText4()
        addVerticalStackViewForBottom()
        addText5()
        addText6()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension SelectedPriceBlockView {
    
    func addStackView() {
        addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 3
        
        stackView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(230)
            make.center.equalToSuperview()
        }
    }
    
    func addTopView() {
        stackView.addArrangedSubview(topView)
        topView.backgroundColor = .systemBlue
        
        topView.snp.makeConstraints { make in
            make.height.greaterThanOrEqualTo(160)
        }
    }
    
    func addBottomView() {
        stackView.addArrangedSubview(bottomView)
        bottomView.backgroundColor = .systemBlue
        
        bottomView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
    }
    
    func addVerticalStackViewForTop() {
        topView.addSubview(verticalStackViewForTop)
        
        verticalStackViewForTop.addArrangedSubview(text6)
        verticalStackViewForTop.addArrangedSubview(text3)
        verticalStackViewForTop.addArrangedSubview(text4)
        verticalStackViewForTop.addArrangedSubview(text5)

        verticalStackViewForTop.axis = .vertical
        verticalStackViewForTop.alignment = .center
        verticalStackViewForTop.spacing = 10
        
        verticalStackViewForTop.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    func addText1() {
        text6.font = UIFont(name: "Arial", size: 15)?.bold()
        text6.textColor = .black
        text6.text = "SAVE 50%"
    }
    
    func addText2() {
        text3.text = "1"
    }
    
    func addText3() {
        text4.text = "MONTH"
    }
    
    func addText4() {
        text5.font = UIFont(name: "Arial", size: 12)?.bold()
        text5.text = "50 RUB / WEEK"
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
    
    func addText5() {
        text1.text = "4 500 RUB"
    }
    
    func addText6() {
        text2.text = "YEAR"
        text2.font = UIFont(name: "Arial", size: 13)?.bold()
    }
    
    
 
    
}
