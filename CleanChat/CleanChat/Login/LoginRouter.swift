//
//  LoginRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class LoginRouter: LoginWireframeProtocol {

    weak var viewController: UIViewController?
    weak var navigationController: UINavigationController?

    static func createModule(with navigationController: UINavigationController?) -> UIViewController {
        let view = LoginViewController(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))

        let interactor = LoginInteractor()
        let router = LoginRouter()
        let presenter = LoginPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        router.navigationController = navigationController

        return view
    }

    func routeToDashboard() {
        let view = HomeRouter.createModule()

        self.navigationController?.pushViewController(view, animated: true)
    }
}
