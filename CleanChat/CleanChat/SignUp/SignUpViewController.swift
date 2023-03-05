//
//  SignUpViewController.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class SignUpViewController: UIViewController, SignUpViewProtocol {

	var presenter: SignUpPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
    }

}
