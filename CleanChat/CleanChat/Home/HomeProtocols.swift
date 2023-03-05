//
//  HomeProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

//MARK: Wireframe -
protocol HomeWireframeProtocol: class {

}
//MARK: Presenter -
protocol HomePresenterProtocol: class {

}

//MARK: Interactor -
protocol HomeInteractorProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}

//MARK: View -
protocol HomeViewProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}
