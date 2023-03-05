//
//  InitialViewPresenter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 04/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class InitialViewPresenter: InitialViewPresenterProtocol {

    weak private var view: InitialViewViewProtocol?
    var interactor: InitialViewInteractorProtocol?
    private let router: InitialViewWireframeProtocol

    init(interface: InitialViewViewProtocol, interactor: InitialViewInteractorProtocol?, router: InitialViewWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    func goToLogin() {
        router.routeToLogin()
    }

    func goToSignUp() {
        router.routeToSignUp()
    }

}
