//
//  InitialViewViewController.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 04/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class InitialViewViewController: UIViewController, InitialViewViewProtocol {

	var presenter: InitialViewPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

    }

}
