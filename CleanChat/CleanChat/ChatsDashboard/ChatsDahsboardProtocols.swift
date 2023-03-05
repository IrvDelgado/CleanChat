//
//  ChatsDahsboardProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

//MARK: Wireframe -
protocol ChatsDahsboardWireframeProtocol: AnyObject {

}
//MARK: Presenter -
protocol ChatsDahsboardPresenterProtocol: AnyObject {

}

//MARK: Interactor -
protocol ChatsDahsboardInteractorProtocol: AnyObject {

  var presenter: ChatsDahsboardPresenterProtocol?  { get set }
}

//MARK: View -
protocol ChatsDahsboardViewProtocol: AnyObject {

  var presenter: ChatsDahsboardPresenterProtocol?  { get set }
}
