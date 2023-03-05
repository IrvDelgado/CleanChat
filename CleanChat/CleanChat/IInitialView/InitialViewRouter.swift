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

    static func createModule() -> UIViewController {
        let view = InitialViewViewController(nibName: "InitialViewViewController", bundle: Bundle(for: InitialViewViewController.self))
        let interactor = InitialViewInteractor()
        let router = InitialViewRouter()
        let presenter = InitialViewPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
