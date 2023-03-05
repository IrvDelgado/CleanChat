//
//  ChatsDahsboardPresenter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class ChatsDahsboardPresenter: ChatsDahsboardPresenterProtocol {

    weak private var view: ChatsDahsboardViewProtocol?
    var interactor: ChatsDahsboardInteractorProtocol?
    private let router: ChatsDahsboardWireframeProtocol

    init(interface: ChatsDahsboardViewProtocol, interactor: ChatsDahsboardInteractorProtocol?, router: ChatsDahsboardWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
