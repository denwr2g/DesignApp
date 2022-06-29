//
//  MainView.swift
//  DesignApp
//
//  Created by deniss.lobacs on 15/03/2022.
//

import UIKit

class MainView: UIView {
    
   // private var viewModel: MainViewModel?
    var onOpenWeb: (() -> Void)?
    
    private func shouldOpenWeb() {

        self.onOpenWeb?()
    }
    
    private let background = BackgroundView()
    private let titleLabel = UILabel()
    private let infoLabel = UILabel()
    private let priceBlock1View = PriceView()
    private let priceBlock2View = PriceView()
    private var priceBlock3View = PriceView()
    private let horizontalStackView = UIStackView()
    private let button = CustomButton(type: .system)
    private let button1 = UIButton(type: .system)
    private let button2 = UIButton(type: .system)
    private let button3 = UIButton(type: .system)
    
    private let textView1 = UILabel()
    private let textView2 = UILabel()
    private let textView3 = UILabel()
    
    private let separator1 = UILabel()
    private let separator2 = UILabel()
    
    private let stackViewForBottomButtons = UIStackView()
    private let mainVerticalStack = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        priceBlock2View.isActive = true
        addBackground()
        addTitleLabel()
        addInfoLabel()
        addPriceBlockView()
        addHorizontalStackView()
        addButton()
        addBottomButtonBar()
        addTextView1()
        addTextView2()
        addTextView3()
        addStackViewForBottomButtons()
        addMainVerticalStack()
        configItems()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}

extension MainView {
    func addBackground() {
        addSubview(background)
        
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    func addTitleLabel() {
       // addSubview(titleLabel)
        
        titleLabel.font = UIFont(name: "Arial", size: 40)?.boldItalic()
        titleLabel.text = "Unlimited access"
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        titleLabel.snp.makeConstraints { make in
            make.height.equalTo(30)
        }
    }
    
    func addInfoLabel() {
      //  addSubview(infoLabel)
        
        infoLabel.font = UIFont(name: "Avenir", size: 25)
        infoLabel.text = "Your new guide on the way \n the healthy living"
        infoLabel.textColor = .white
        infoLabel.numberOfLines = 0
        infoLabel.textAlignment = .center
        
        infoLabel.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
    }
    
    func addPriceBlockView() {
        //        priceBlock1View.snp.makeConstraints { make in
        //            make.height.equalTo(210)
        //        }
        
        //        priceBlock2View.snp.makeConstraints { make in
        //            make.height.equalTo(210)
        //        }
        
        //        priceBlock3View.snp.makeConstraints { make in
        //            make.height.equalTo(210)
        //        }
    }
    
    func addHorizontalStackView() {
       // addSubview(horizontalStackView)
        horizontalStackView.addArrangedSubview(priceBlock1View)
        horizontalStackView.addArrangedSubview(priceBlock2View)
        horizontalStackView.addArrangedSubview(priceBlock3View)
        
        horizontalStackView.axis = .horizontal
        horizontalStackView.alignment = .bottom
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.spacing = 13
    }
    
    func addButton() {
       // addSubview(button)
        button.backgroundColor = UIColor.clear
        button.tintColor = .white
        button.setTitle("CONTINIUE", for: .normal)
        
        button.snp.makeConstraints { make in
            make.height.equalTo(60)
        }
    }
    
    func addBottomButtonBar() {
        separator1.text = "|"
        separator1.textColor = .white
        separator2.text = "|"
        separator2.textColor = .white
    }
    
    func addTextView1() {
        textView1.font = UIFont(name: "Arial", size: 11)
        textView1.text = "Политика конфиденциальности"
        textView1.sizeToFit()
        textView1.textColor = .white
        textView1.isUserInteractionEnabled = true
        
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
        textView1.addGestureRecognizer(guestureRecognizer)
    }
    
    func addTextView2() {
        textView2.font = UIFont(name: "Arial", size: 11)
        textView2.text = "Условие предоставление услуг"
        textView2.sizeToFit()
        textView2.textColor = .white
        textView2.isUserInteractionEnabled = true

        //  textView2.backgroundColor = .red
        //        textView2.isEditable = false
        //        textView2.isScrollEnabled = false
        textView2.sizeToFit()
        
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
        textView2.addGestureRecognizer(guestureRecognizer)

        
    }
    
    func addTextView3() {
        textView3.font = UIFont(name: "Arial", size: 11)
        textView3.text = "Restore"
        textView3.sizeToFit()
        textView3.textColor = .white
        textView3.isUserInteractionEnabled = true
        
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
        textView3.addGestureRecognizer(guestureRecognizer)
    }
    
    func addStackViewForBottomButtons() {
        // addSubview(stackViewForBottomButtons)
        
        stackViewForBottomButtons.addArrangedSubview(textView1)
        stackViewForBottomButtons.addArrangedSubview(separator1)
        stackViewForBottomButtons.addArrangedSubview(textView2)
        stackViewForBottomButtons.addArrangedSubview(separator2)
        stackViewForBottomButtons.addArrangedSubview(textView3)
        //        stackViewForBottomButtons.addArrangedSubview(button2)
        //     stackViewForBottomButtons.addArrangedSubview(separator2)
        //        stackViewForBottomButtons.addArrangedSubview(button3)
        
        stackViewForBottomButtons.axis = .horizontal
         stackViewForBottomButtons.alignment = .center
        stackViewForBottomButtons.distribution = .fillProportionally
        stackViewForBottomButtons.spacing = 3
        stackViewForBottomButtons.contentMode = .scaleToFill
        stackViewForBottomButtons.semanticContentAttribute = .unspecified
    }
    
    func addMainVerticalStack() {
        addSubview(mainVerticalStack)
        mainVerticalStack.addArrangedSubview(titleLabel)
        mainVerticalStack.addArrangedSubview(infoLabel)
        mainVerticalStack.addArrangedSubview(horizontalStackView)
        mainVerticalStack.addArrangedSubview(button)
        mainVerticalStack.addArrangedSubview(stackViewForBottomButtons)
        
        mainVerticalStack.axis = .vertical
        mainVerticalStack.alignment = .fill
        mainVerticalStack.distribution = .fill
        mainVerticalStack.spacing = 20
        mainVerticalStack.contentMode = .scaleToFill
        mainVerticalStack.semanticContentAttribute = .unspecified
        
        mainVerticalStack.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide).inset(10)
        }
    }
    
    func configItems() {
        
        let model1 = PriceView.Model(year: "MONTH", month: "MONTH")
        priceBlock1View.configure(with: model1)
        
        let model2 = PriceView.Model(year: "YEAR", month: "YEAR")
        priceBlock2View.configure(with: model2)
        
        let model3 = PriceView.Model(year: "MONTH", month: "MONTH")
        priceBlock3View.configure(with: model3)
        
        priceBlock1View.onButtonTap = { [weak self] in
            self?.priceBlock1View.isActive = true
            self?.priceBlock2View.isActive = false
            self?.priceBlock3View.isActive = false
            self?.priceBlock1View.discauntLabel.text = "SAVE 10%"
        }
        
        priceBlock2View.onButtonTap = { [weak self] in
            self?.priceBlock1View.isActive = false
            self?.priceBlock2View.isActive = true
            self?.priceBlock3View.isActive = false
            self?.priceBlock2View.discauntLabel.text = "SAVE 30%"

        }
        
        priceBlock3View.onButtonTap = { [weak self] in
            self?.priceBlock1View.isActive = false
            self?.priceBlock2View.isActive = false
            self?.priceBlock3View.isActive = true
            self?.priceBlock3View.discauntLabel.text = "SAVE 20%"

        }
    }
    
    @objc func labelClicked(_ sender: Any) {
        shouldOpenWeb()
    }
}


