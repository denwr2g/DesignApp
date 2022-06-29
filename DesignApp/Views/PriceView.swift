//
//  CustomView.swift
//  DesignApp
//
//  Created by deniss.lobacs on 16/03/2022.
//

import UIKit


final class PriceView: UIView {
    
    struct Model {
        let year: String
        let month: String
    }
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var bottomBar: UIView!
    @IBOutlet weak var discauntLabel: UILabel!
    @IBOutlet weak var yearCountLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var pricePerWeekLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    
    var isActive: Bool = false {
        didSet {
            changeState()
        }
    }
    
    var onButtonTap: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    func configure(with model: Model) {
        self.yearLabel.text = model.year
        self.monthLabel.text = model.month
    }
    
    private func configureView() {
        guard let view = loadViewFromNib(nibName: "PriceView") else { return }
        view.frame = bounds
        addSubview(view)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        onButtonTap?()
    }
    
    func changeState() {
        topBar.backgroundColor = isActive ? .blue : UIColor(named: "priceViewColor")
        bottomBar.backgroundColor = isActive ? .blue : UIColor(named: "priceViewColor")
        discauntLabel.text = isActive ? "SAVE 30%" : ""
        yearLabel.textColor = isActive ? .white : UIColor(named: "labelColor")
        pricePerWeekLabel.textColor = isActive ? .white : UIColor(named: "labelColor")
        yearCountLabel.textColor = isActive ? .white : UIColor(named: "labelColor")
        priceLabel.textColor = isActive ? .white : UIColor(named: "labelColor")
        monthLabel.textColor = isActive ? .white : UIColor(named: "labelColor")
    }
    

}
