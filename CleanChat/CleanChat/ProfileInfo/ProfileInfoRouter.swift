//
//  ProfileInfoRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class ProfileInfoRouter: ProfileInfoWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let view = ProfileInfoViewController(nibName: "ProfileInfoViewController", bundle: Bundle(for: ProfileInfoViewController.self))
        let interactor = ProfileInfoInteractor()
        let router = ProfileInfoRouter()
        let presenter = ProfileInfoPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
