//
//  ChatDetailProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

//MARK: Wireframe -
protocol ChatDetailWireframeProtocol: AnyObject {

}
//MARK: Presenter -
protocol ChatDetailPresenterProtocol: AnyObject {

}

//MARK: Interactor -
protocol ChatDetailInteractorProtocol: AnyObject {

  var presenter: ChatDetailPresenterProtocol?  { get set }
}

//MARK: View -
protocol ChatDetailViewProtocol: AnyObject {

  var presenter: ChatDetailPresenterProtocol?  { get set }
}
