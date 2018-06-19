//
//  LoginControllerViewModel.swift
//  MVVM-RxSwift-LoginFlow
//
//  Created by Alexey Savchenko on 6/19/18.
//  Copyright © 2018 Alexey Savchenko. All rights reserved.
//

import Foundation

class LoginControllerViewModel: ViewModelProtocol {
    struct Input {
    }
    struct Output {
    }
    
    let input: Input
    let output: Output
    
    private let loginService: LoginServiceProtocol
    
    init(_ loginService: LoginServiceProtocol) {
        self.loginService = loginService
        input = Input()
        output = Output()
    }
}
