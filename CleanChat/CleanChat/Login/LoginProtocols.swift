//
//  LoginProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: Wireframe -
protocol LoginWireframeProtocol: AnyObject {
    func routeToDashboard()

}
// MARK: Presenter -
protocol LoginPresenterProtocol: AnyObject {
    func loginUser(email: String, pass: String)

    func presentLoginError(withError: String)
    func goToDashboard()

}

// MARK: Interactor -
protocol LoginInteractorProtocol: AnyObject {

  var presenter: LoginPresenterProtocol? { get set }
    func doLogIn(email: String, pass: String)
}

// MARK: View -
protocol LoginViewProtocol: AnyObject {

  var presenter: LoginPresenterProtocol? { get set }

    func displayLoginError(message: String)

}
