//
//  InitialViewRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 04/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class InitialViewRouter: InitialViewWireframeProtocol {

    weak var viewController: UIViewController?
    weak var navigationController: UINavigationController?

    static func createModule(with navigationController: UINavigationController?) -> UIViewController {
        let view = InitialViewViewController(nibName: "InitialViewViewController", bundle: Bundle(for: InitialViewViewController.self))
        let interactor = InitialViewInteractor()
        let router = InitialViewRouter()
        let presenter = InitialViewPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        router.navigationController = navigationController

        return view
    }

    func routeToLogin() {
        guard let navController = self.navigationController else { return}

        let view = LoginRouter.createModule(with: navController)

        self.navigationController?.pushViewController(view, animated: true)
    }

    func routeToSignUp() {

        guard let navController = self.navigationController else { return}

        let view = SignUpRouter.createModule(with: navController)
        self.navigationController?.pushViewController(view, animated: true)
    }

}
