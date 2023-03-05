//
//  ChatDetailPresenter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class ChatDetailPresenter: ChatDetailPresenterProtocol {

    weak private var view: ChatDetailViewProtocol?
    var interactor: ChatDetailInteractorProtocol?
    private let router: ChatDetailWireframeProtocol

    init(interface: ChatDetailViewProtocol, interactor: ChatDetailInteractorProtocol?, router: ChatDetailWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
