//
//  ViewController.swift
//  DesignApp
//
//  Created by deniss.lobacs on 15/03/2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var mainView = MainView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    
}

private extension ViewController {
    
    func configView() {
        
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainView.onOpenWeb = {
            let url = URL(string: "https://google.com/")
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
    
}




