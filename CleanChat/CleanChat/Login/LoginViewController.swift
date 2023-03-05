//
//  LoginViewController.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class LoginViewController: UIViewController, LoginViewProtocol {

	var presenter: LoginPresenterProtocol?

    private let fullStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // stackView.backgroundColor = .red
        return stackView
    }()

    private let topView: UIView = {
        let logoV = UIView()

        // logoV.backgroundColor = .brown

        return logoV
    }()

    let middleView: UIView = {
        let bView = UIView()
        bView.backgroundColor = .systemPink
        return bView
    }()

    let bottomView: UIView = {
        let bView = UIView()
        bView.backgroundColor = .green
        return bView
    }()

    let logoImgView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill

        imgView.image = UIImage(systemName: "house")
        imgView.tintColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .systemPink
        // imgView.backgroundColor = .orange
        return imgView
    }()

    let cleanChatLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Clean Chat"
        label.textColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .systemBlue

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(fullStackView)

        self.title = "Log in"

        NSLayoutConstraint.activate([
            fullStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            fullStackView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            fullStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            fullStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])

        topView.addSubview(logoImgView)
        topView.addSubview(cleanChatLbl)

        NSLayoutConstraint.activate([
            logoImgView.centerXAnchor.constraint(equalTo: self.topView.centerXAnchor),
            logoImgView.centerYAnchor.constraint(equalTo: self.topView.centerYAnchor),
            logoImgView.heightAnchor.constraint(equalToConstant: 150),
            logoImgView.widthAnchor.constraint(equalToConstant: 150),
            cleanChatLbl.topAnchor.constraint(equalTo: logoImgView.bottomAnchor, constant: 6),
            cleanChatLbl.centerXAnchor.constraint(equalTo: topView.centerXAnchor)
        ])

        fullStackView.addArrangedSubview(topView)
        fullStackView.addArrangedSubview(middleView)
        fullStackView.addArrangedSubview(bottomView)

    }

}
