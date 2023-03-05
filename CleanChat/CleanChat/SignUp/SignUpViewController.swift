//
//  SignUpViewController.swift
//  CleanChat
//
//  Created Irving Delgado Silva on 05/03/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class SignUpViewController: UIViewController, SignUpViewProtocol {

    func displaySignUpError(message: String) {

        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
          switch action.style {
          case .default:
            print("default")
          case .cancel:
            print("cancel")
          case .destructive:
            print("destructive")
          @unknown default:
              fatalError()
          }
        }))

        self.present(alert, animated: true, completion: nil)
    }

    var presenter: SignUpPresenterProtocol?

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

        imgView.image = UIImage(systemName: "person.crop.circle")
        imgView.tintColor = UIColor(fromHex: AppConstants.Color.primaryColor) ?? .systemPink
        // imgView.backgroundColor = .orange
        return imgView
    }()

    let choosePhotoLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Choose photo"
        label.textColor = .systemBlue

        return label
    }()

    let alreadyLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Already have an account? Log in"
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

    private let usernameSV: UIView = {
        let stackView = UIView()

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

    let userLbl: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "User Name: "
        label.textColor = .black

        return label
    }()

    private let userTxtField: UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        // textField.backgroundColor = UIColor(fromHex: AppConstants.Color.UnselectedFieldColor) ?? .opaqueSeparator
        textField.translatesAutoresizingMaskIntoConstraints = false
        // textField.placeholder = AppConstants.Search.searchPlaceHolderText
        // textField.returnKeyType = .go
        // textField.textColor = UIColor(fromHex: AppConstants.Color.fontNunitoBlueColor) ?? .label
        return textField

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

        view.backgroundColor = UIColor(fromHex: AppConstants.Color.backgroundColor) ?? .white
        view.addSubview(fullStackView)

        self.title = "Sign up"

        NSLayoutConstraint.activate([
            fullStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            fullStackView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            fullStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            fullStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])

        topView.addSubview(logoImgView)
        topView.addSubview(choosePhotoLbl)

        NSLayoutConstraint.activate([
            logoImgView.centerXAnchor.constraint(equalTo: self.topView.centerXAnchor),
            logoImgView.centerYAnchor.constraint(equalTo: self.topView.centerYAnchor),
            logoImgView.heightAnchor.constraint(equalToConstant: 150),
            logoImgView.widthAnchor.constraint(equalToConstant: 150),
            choosePhotoLbl.topAnchor.constraint(equalTo: logoImgView.bottomAnchor, constant: 6),
            choosePhotoLbl.centerXAnchor.constraint(equalTo: topView.centerXAnchor)
        ])

        // MIDDLE VIEW

        // textFieldsStackView.addArrangedSubview( )

        middleView.addSubview(textFieldsStackView)

        NSLayoutConstraint.activate([
            textFieldsStackView.topAnchor.constraint(equalTo: middleView.topAnchor, constant: 30),
            textFieldsStackView.leadingAnchor.constraint(equalTo: middleView.leadingAnchor, constant: 25),
            textFieldsStackView.trailingAnchor.constraint(equalTo: middleView.trailingAnchor, constant: -25),
            textFieldsStackView.bottomAnchor.constraint(equalTo: middleView.bottomAnchor, constant: -30)

        ])

        textFieldsStackView.addArrangedSubview(usernameSV)
        textFieldsStackView.addArrangedSubview(emailSV)
        textFieldsStackView.addArrangedSubview(passSV)

        usernameSV.addSubview(userLbl)
        usernameSV.addSubview(userTxtField)

        emailSV.addSubview(emailLbl)
        emailSV.addSubview(emailTxtField)

        passSV.addSubview(passLbl)
        passSV.addSubview(passTxtField)

        bottomView.addSubview(signUpBtn)
        bottomView.addSubview(alreadyLbl)

        NSLayoutConstraint.activate([
            userLbl.topAnchor.constraint(equalTo: usernameSV.topAnchor, constant: 12),
            userLbl.leadingAnchor.constraint(equalTo: usernameSV.leadingAnchor, constant: 5),
            userLbl.widthAnchor.constraint(equalToConstant: 100),
            userTxtField.centerYAnchor.constraint(equalTo: userLbl.centerYAnchor),
            userTxtField.leadingAnchor.constraint(equalTo: userLbl.trailingAnchor, constant: 10),
            userTxtField.bottomAnchor.constraint(equalTo: userLbl.bottomAnchor),
            userTxtField.trailingAnchor.constraint(equalTo: usernameSV.trailingAnchor, constant: -5),

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

            signUpBtn.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            signUpBtn.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor, constant: -10),
            signUpBtn.widthAnchor.constraint(equalToConstant: 140),

            alreadyLbl.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 25),
            alreadyLbl.centerXAnchor.constraint(equalTo: signUpBtn.centerXAnchor),
            alreadyLbl.widthAnchor.constraint(equalToConstant: 196)
        ])

        signUpBtn.layer.cornerRadius = 5

        fullStackView.addArrangedSubview(topView)
        fullStackView.addArrangedSubview(middleView)
        fullStackView.addArrangedSubview(bottomView)

    }

    @objc func signUpBtnAction(sender: UIButton) {

        if let email = emailTxtField.text, let pass = passTxtField.text {
            presenter?.signUpUser(email: email, pass: pass)

        }

    }
}
