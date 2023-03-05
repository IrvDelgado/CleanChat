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

}
