//
//  ChatsDahsboardRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ChatsDahsboardRouter: ChatsDahsboardWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let view = ChatsDahsboardViewController(nibName: "ChatsDahsboardViewController", bundle: Bundle(for: ChatsDahsboardViewController.self))
        let interactor = ChatsDahsboardInteractor()
        let router = ChatsDahsboardRouter()
        let presenter = ChatsDahsboardPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
