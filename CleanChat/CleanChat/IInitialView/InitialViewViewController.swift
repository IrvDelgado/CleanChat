//
//  InitialViewViewController.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 04/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class InitialViewViewController: UIViewController, InitialViewViewProtocol {

	var presenter: InitialViewPresenterProtocol?

    // MARK: - UI Elements setting/declaration
    @IBOutlet weak var fullStackView: UIStackView! {
        didSet {
            fullStackView.axis = .vertical
            fullStackView.distribution = .fill
            fullStackView.alignment = .fill
        }
    }

    private let logoView: UIView = {
        let logoV = UIView()

        // logoV.backgroundColor = .brown

        return logoV
    }()

    let buttonsView: UIView = {
        let bView = UIView()
        // bView.backgroundColor = .systemPink
        return bView
    }()

    let logoImgView: UIImageView = {
        let imgView = UIImageView()
        // imgView.layer.masksToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill

        imgView.image = UIImage(systemName: "house")
        imgView.tintColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .systemPink
        // imgView.backgroundColor = .orange
        return imgView
    }()

    private let buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // stackView.backgroundColor = .red
        return stackView
    }()

     private lazy var loginBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .opaqueSeparator
        // button.setTitleColor(UIColor(fromHex: AppConstants.Color.fontNunitoBlueColor) ?? .label, for: .normal)
        button.setTitle(AppConstants.WelcomeView.loginText, for: .normal)
        // button.layer.borderColor = UIColor(fromHex: AppConstants.Color.searchButtonBorder)?.cgColor ?? UIColor.yellow.cgColor

        button.layer.borderWidth = 0

        button.translatesAutoresizingMaskIntoConstraints = false

         button.addTarget(self, action: #selector(loginBtnAction(sender:)), for: .touchUpInside)

        return button
    }()

    private lazy var signUpBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .opaqueSeparator
        // button.setTitleColor(UIColor(fromHex: AppConstants.Color.fontNunitoBlueColor) ?? .label, for: .normal)
        button.setTitle(AppConstants.WelcomeView.signupText, for: .normal)
        // button.layer.borderColor = UIColor(fromHex: AppConstants.Color.searchButtonBorder)?.cgColor ?? UIColor.yellow.cgColor

        button.layer.borderWidth = 0

        button.translatesAutoresizingMaskIntoConstraints = false

         button.addTarget(self, action: #selector(signUpBtnAction(sender:)), for: .touchUpInside)

        return button
    }()

	override func viewDidLoad() {
        super.viewDidLoad()

            logoView.addSubview(logoImgView)

            NSLayoutConstraint.activate([
                logoImgView.centerXAnchor.constraint(equalTo: self.logoView.centerXAnchor),
                logoImgView.centerYAnchor.constraint(equalTo: self.logoView.centerYAnchor),
                logoImgView.heightAnchor.constraint(equalToConstant: 200),
                logoImgView.widthAnchor.constraint(equalToConstant: 200)
            ])

            loginBtn.layer.cornerRadius = 5
            signUpBtn.layer.cornerRadius = 5

            buttonsStackView.addArrangedSubview(self.loginBtn)
            buttonsStackView.addArrangedSubview(self.signUpBtn)

            buttonsView.addSubview(self.buttonsStackView)

            NSLayoutConstraint.activate([
                buttonsStackView.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 0),
                buttonsStackView.leadingAnchor.constraint(equalTo: buttonsView.leadingAnchor, constant: 56),
                buttonsStackView.trailingAnchor.constraint(equalTo: buttonsView.trailingAnchor, constant: -56),
                buttonsStackView.bottomAnchor.constraint(equalTo: buttonsView.bottomAnchor, constant: -30)

            ])

            fullStackView.addArrangedSubview(logoView)
            fullStackView.addArrangedSubview(buttonsView)

    }

    override func viewDidLayoutSubviews() {

    }

    @objc func loginBtnAction(sender: UIButton) {
        presenter?.goToLogin()
    }

    @objc func signUpBtnAction(sender: UIButton) {
        presenter?.goToSignUp()
    }

}
