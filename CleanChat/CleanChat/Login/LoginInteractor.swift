//
//  LoginInteractor.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit
import FirebaseAuth

final class LoginInteractor: LoginInteractorProtocol {
    func doLogIn(email: String, pass: String) {
        Auth.auth().signIn(withEmail: email, password: pass) { [weak self] _, error in
            guard let self = self else {return}

            if let e = error {
                self.presenter?.presentLoginError(withError: e.localizedDescription)

            } else {
                self.presenter?.goToDashboard()
            }
        }
    }

    weak var presenter: LoginPresenterProtocol?
}
