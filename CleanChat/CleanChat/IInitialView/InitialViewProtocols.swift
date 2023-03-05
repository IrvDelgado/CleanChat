//
//  InitialViewProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 04/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: Wireframe -
protocol InitialViewWireframeProtocol: AnyObject {

}
// MARK: Presenter -
protocol InitialViewPresenterProtocol: AnyObject {

}

// MARK: Interactor -
protocol InitialViewInteractorProtocol: AnyObject {

  var presenter: InitialViewPresenterProtocol? { get set }
}

// MARK: View -
protocol InitialViewViewProtocol: AnyObject {

  var presenter: InitialViewPresenterProtocol? { get set }
}
