//
//  SignUpProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: Wireframe -
protocol SignUpWireframeProtocol: AnyObject {
    func routeToDashboard()
}
// MARK: Presenter -
protocol SignUpPresenterProtocol: AnyObject {
    func signUpUser(email: String, pass: String)
    func presentSignUpError(withError: String)
    func goToDashboard()

}

// MARK: Interactor -
protocol SignUpInteractorProtocol: AnyObject {

  var presenter: SignUpPresenterProtocol? { get set }

    func doSignUP(email: String, pass: String)
}

// MARK: View -
protocol SignUpViewProtocol: AnyObject {

  var presenter: SignUpPresenterProtocol? { get set }

    func displaySignUpError(message: String)
}
