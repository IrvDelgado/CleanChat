//
//  LoginPresenter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class LoginPresenter: LoginPresenterProtocol {

    weak private var view: LoginViewProtocol?
    var interactor: LoginInteractorProtocol?
    private let router: LoginWireframeProtocol

    init(interface: LoginViewProtocol, interactor: LoginInteractorProtocol?, router: LoginWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    func loginUser(email: String, pass: String) {
        interactor?.doLogIn(email: email, pass: pass)
    }

    func presentLoginError(withError: String) {
        view?.displayLoginError(message: withError)
    }

    func goToDashboard() {
        router.routeToDashboard()
    }
}
