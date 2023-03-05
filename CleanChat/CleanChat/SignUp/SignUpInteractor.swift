//
//  SignUpInteractor.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit
import FirebaseAuth

final class SignUpInteractor: SignUpInteractorProtocol {

    weak var presenter: SignUpPresenterProtocol?

    func doSignUP(email: String, pass: String) {

        Auth.auth().createUser(withEmail: email, password: pass) { [weak self] _, error in

            guard let self = self else {return}

            if let err = error {
                self.presenter?.presentSignUpError(withError: err.localizedDescription)
            } else {
                self.presenter?.goToDashboard()
            }

        }
    }
}
