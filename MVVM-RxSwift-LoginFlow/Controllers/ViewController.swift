//
//  ViewController.swift
//  MVVM-RxSwift-LoginFlow
//
//  Created by Alexey Savchenko on 6/19/18.
//  Copyright © 2018 Alexey Savchenko. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    var viewModel: LoginControllerViewModel!
    
    // MARK: - UI
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(with: viewModel)
    }
    
    // MARK: - Functions
    func configure(with viewModel: LoginControllerViewModel) {
        
    }
    
}

extension LoginController {
    /// Factory function for LoginController instatiation
    ///
    /// - Parameter viewModel: View model object
    open class func create(with viewModel: LoginControllerViewModel) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        controller.viewModel = viewModel
        return controller
    }
}
