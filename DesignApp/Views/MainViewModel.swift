//
//  MainViewModel.swift
//  DesignApp
//
//  Created by deniss.lobacs on 18/03/2022.
//

import Foundation

final class MainViewModel {
    
    var onOpenWeb: (() -> Void)?
    
    func shouldOpenWeb() {
        self.onOpenWeb?()
    }
}
