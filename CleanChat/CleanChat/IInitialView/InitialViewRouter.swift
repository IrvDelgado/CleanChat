//
//  InitialViewRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 04/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class InitialViewRouter: InitialViewWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = InitialViewViewController(nibName: nil, bundle: nil)
        let interactor = InitialViewInteractor()
        let router = InitialViewRouter()
        let presenter = InitialViewPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
