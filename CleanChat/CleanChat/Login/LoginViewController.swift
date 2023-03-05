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

    // MARK: - Top view UI elements

    private let topView: UIView = {
        let logoV = UIView()

        // logoV.backgroundColor = .brown

        return logoV
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

    let alreadyLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Not registered yet? Sign up"
        label.textColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .systemBlue

        return label
    }()

    // MARK: - Middle View UI elements
    let middleView: UIView = {
        let bView = UIView()
        return bView
    }()

    private let textFieldsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private let emailSV: UIView = {
        let stackView = UIView()

        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private let passSV: UIView = {
        let stackView = UIView()

        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    let emailLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "E-mail: "
        label.textColor = .black

        return label
    }()

    private let emailTxtField: UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        // textField.backgroundColor = UIColor(fromHex: AppConstants.Color.UnselectedFieldColor) ?? .opaqueSeparator
        textField.translatesAutoresizingMaskIntoConstraints = false
        // textField.placeholder = AppConstants.Search.searchPlaceHolderText
        // textField.returnKeyType = .go
        // textField.textColor = UIColor(fromHex: AppConstants.Color.fontNunitoBlueColor) ?? .label
        return textField

    }()

    let passLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password: "
        label.textColor = .black

        return label
    }()

    private let passTxtField: UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        // textField.backgroundColor = UIColor(fromHex: AppConstants.Color.UnselectedFieldColor) ?? .opaqueSeparator
        textField.translatesAutoresizingMaskIntoConstraints = false
        // textField.placeholder = AppConstants.Search.searchPlaceHolderText
        // textField.returnKeyType = .go
        // textField.textColor = UIColor(fromHex: AppConstants.Color.fontNunitoBlueColor) ?? .label
        textField.isSecureTextEntry = true
        return textField

    }()

    // MARK: - Bottom View UI elements
    let bottomView: UIView = {
        let bView = UIView()
        return bView
    }()

    // bottom view

    private lazy var logInBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .opaqueSeparator
        // button.setTitleColor(UIColor(fromHex: AppConstants.Color.fontNunitoBlueColor) ?? .label, for: .normal)
        button.setTitle(AppConstants.WelcomeView.loginText, for: .normal)
        // button.layer.borderColor = UIColor(fromHex: AppConstants.Color.searchButtonBorder)?.cgColor ?? UIColor.yellow.cgColor

        button.layer.borderWidth = 0

        button.translatesAutoresizingMaskIntoConstraints = false

         // button.addTarget(self, action: #selector(signUpBtnAction(sender:)), for: .touchUpInside)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(fromHex: AppConstants.Color.backgroundColor) ?? .white
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

        // MIDDLE VIEW

        // textFieldsStackView.addArrangedSubview( )

        middleView.addSubview(textFieldsStackView)

        NSLayoutConstraint.activate([
            textFieldsStackView.topAnchor.constraint(equalTo: middleView.topAnchor, constant: 60),
            textFieldsStackView.leadingAnchor.constraint(equalTo: middleView.leadingAnchor, constant: 30),
            textFieldsStackView.trailingAnchor.constraint(equalTo: middleView.trailingAnchor, constant: -30),
            textFieldsStackView.bottomAnchor.constraint(equalTo: middleView.bottomAnchor, constant: -60)

        ])

        textFieldsStackView.addArrangedSubview(emailSV)
        textFieldsStackView.addArrangedSubview(passSV)

        emailSV.addSubview(emailLbl)
        emailSV.addSubview(emailTxtField)

        passSV.addSubview(passLbl)
        passSV.addSubview(passTxtField)

        bottomView.addSubview(logInBtn)
        bottomView.addSubview(alreadyLbl)

        NSLayoutConstraint.activate([

            emailLbl.topAnchor.constraint(equalTo: emailSV.topAnchor, constant: 12),
            emailLbl.leadingAnchor.constraint(equalTo: emailSV.leadingAnchor, constant: 5),
            emailLbl.widthAnchor.constraint(equalToConstant: 100),
            emailTxtField.centerYAnchor.constraint(equalTo: emailLbl.centerYAnchor),
            emailTxtField.leadingAnchor.constraint(equalTo: emailLbl.trailingAnchor, constant: 10),
            emailTxtField.bottomAnchor.constraint(equalTo: emailLbl.bottomAnchor),
            emailTxtField.trailingAnchor.constraint(equalTo: emailSV.trailingAnchor, constant: -5),

            passLbl.topAnchor.constraint(equalTo: passSV.topAnchor, constant: 12),
            passLbl.leadingAnchor.constraint(equalTo: passSV.leadingAnchor, constant: 5),
            passLbl.widthAnchor.constraint(equalToConstant: 100),
            passTxtField.centerYAnchor.constraint(equalTo: passLbl.centerYAnchor),
            passTxtField.leadingAnchor.constraint(equalTo: passLbl.trailingAnchor, constant: 10),
            passTxtField.bottomAnchor.constraint(equalTo: passLbl.bottomAnchor),
            passTxtField.trailingAnchor.constraint(equalTo: passSV.trailingAnchor, constant: -5),

            logInBtn.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            logInBtn.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor, constant: -10),
            logInBtn.widthAnchor.constraint(equalToConstant: 140),

            alreadyLbl.topAnchor.constraint(equalTo: logInBtn.bottomAnchor, constant: 25),
            alreadyLbl.centerXAnchor.constraint(equalTo: logInBtn.centerXAnchor),
            alreadyLbl.widthAnchor.constraint(equalToConstant: 150)
        ])

        logInBtn.layer.cornerRadius = 5

        fullStackView.addArrangedSubview(topView)
        fullStackView.addArrangedSubview(middleView)
        fullStackView.addArrangedSubview(bottomView)

    }

}
