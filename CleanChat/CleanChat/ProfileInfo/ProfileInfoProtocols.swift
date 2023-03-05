//
//  ProfileInfoProtocols.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: Wireframe -
protocol ProfileInfoWireframeProtocol: AnyObject {

}
// MARK: Presenter -
protocol ProfileInfoPresenterProtocol: AnyObject {

}

// MARK: Interactor -
protocol ProfileInfoInteractorProtocol: AnyObject {

  var presenter: ProfileInfoPresenterProtocol? { get set }
}

// MARK: View -
protocol ProfileInfoViewProtocol: AnyObject {

  var presenter: ProfileInfoPresenterProtocol? { get set }
}
