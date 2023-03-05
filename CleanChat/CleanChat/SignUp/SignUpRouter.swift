//
//  SignUpRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class SignUpRouter: SignUpWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let view = SignUpViewController(nibName: "SignUpViewController", bundle: Bundle(for: SignUpViewController.self))

        let interactor = SignUpInteractor()
        let router = SignUpRouter()
        let presenter = SignUpPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
