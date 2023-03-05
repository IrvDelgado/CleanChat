//
//  ChatDetailRouter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class ChatDetailRouter: ChatDetailWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let view = ChatDetailViewController(nibName: "ChatDetailViewController", bundle: Bundle(for: ChatDetailViewController.self))
        let interactor = ChatDetailInteractor()
        let router = ChatDetailRouter()
        let presenter = ChatDetailPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
