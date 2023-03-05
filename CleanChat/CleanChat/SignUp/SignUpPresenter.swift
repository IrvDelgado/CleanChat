//
//  SignUpPresenter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class SignUpPresenter: SignUpPresenterProtocol {

    weak private var view: SignUpViewProtocol?
    var interactor: SignUpInteractorProtocol?
    private let router: SignUpWireframeProtocol

    init(interface: SignUpViewProtocol, interactor: SignUpInteractorProtocol?, router: SignUpWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    func signUpUser(email: String, pass: String) {

        interactor?.doSignUP(email: email, pass: pass)

    }

    func goToDashboard() {
        router.routeToDashboard()
    }

    func presentSignUpError(withError: String) {
        view?.displaySignUpError(message: withError)
    }

}
