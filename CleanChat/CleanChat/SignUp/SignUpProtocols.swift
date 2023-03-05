//
//  SignUpProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

//MARK: Wireframe -
protocol SignUpWireframeProtocol: AnyObject {

}
//MARK: Presenter -
protocol SignUpPresenterProtocol: AnyObject {

}

//MARK: Interactor -
protocol SignUpInteractorProtocol: AnyObject {

  var presenter: SignUpPresenterProtocol?  { get set }
}

//MARK: View -
protocol SignUpViewProtocol: AnyObject {

  var presenter: SignUpPresenterProtocol?  { get set }
}
