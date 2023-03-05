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

}
// MARK: Presenter -
protocol LoginPresenterProtocol: AnyObject {

}

// MARK: Interactor -
protocol LoginInteractorProtocol: AnyObject {

  var presenter: LoginPresenterProtocol? { get set }
}

// MARK: View -
protocol LoginViewProtocol: AnyObject {

  var presenter: LoginPresenterProtocol? { get set }
}
