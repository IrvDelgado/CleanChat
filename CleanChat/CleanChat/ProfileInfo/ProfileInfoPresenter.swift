//
//  ProfileInfoPresenter.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class ProfileInfoPresenter: ProfileInfoPresenterProtocol {

    weak private var view: ProfileInfoViewProtocol?
    var interactor: ProfileInfoInteractorProtocol?
    private let router: ProfileInfoWireframeProtocol

    init(interface: ProfileInfoViewProtocol, interactor: ProfileInfoInteractorProtocol?, router: ProfileInfoWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
