//
//  SignUpViewController.swift
//  DealTyme
//
//  Created by Ali Apple on 10/01/2019.
//  Copyright © 2019 Ali Apple. All rights reserved.
//

import UIKit

class SignUpEmployeeViewController: UIViewController {
    
    //    let userInstance = UserInfo.sharedInstance
    
    let lineSeparator1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 238, g: 238, b: 239)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let mainView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let logoContainerView: UIView = {
        var view = UIView()
//                view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let inputsContainerView: UIView = {
        var view = UIView()
//                view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomView: UIView = {
        var view = UIView()
//                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let logoImageView: UIImageView = {
        var bi = UIImageView()
        let screenSize: CGRect = UIScreen.main.bounds
        bi.translatesAutoresizingMaskIntoConstraints = false
        //        bi.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height)
        bi.image = UIImage(named: "logo.png")
        bi.contentMode = .scaleAspectFit
        //        bi.backgroundColor = .orange
        return bi
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 14)
        tf.attributedPlaceholder = NSAttributedString(string: "Name",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.autocapitalizationType = .none
        tf.layer.masksToBounds = false
        tf.clipsToBounds = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let phoneNumberTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 14)
        tf.attributedPlaceholder = NSAttributedString(string: "Phone Number",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.autocapitalizationType = .none
        tf.keyboardType = .numberPad
        tf.layer.masksToBounds = false
        tf.clipsToBounds = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 14)
        tf.attributedPlaceholder = NSAttributedString(string: "Password",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.layer.masksToBounds = false
        tf.clipsToBounds = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let reEnterPasswordTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 14)
        tf.attributedPlaceholder = NSAttributedString(string: "Re-enter password",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.layer.masksToBounds = false
        tf.clipsToBounds = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let venderCodeTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 14)
        tf.attributedPlaceholder = NSAttributedString(string: "Vendor code",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.layer.masksToBounds = false
        tf.clipsToBounds = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    let lineSeparator2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lineSeparator3: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lineSeparator4: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lineSeparator5: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lineSeparator6: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    var confirmButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 80, g:169, b:53)
        button.setTitle("Sign Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 50/2
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(handleConfirmButton), for:.touchUpInside)
        return button
    }()
    
    @objc func handleConfirmButton(){
        
        //        self.navigationController?.pushViewController(CodeVerificationViewController(), animated: true)
        
        if !(nameTextField.text?.isEmpty)! && !(phoneNumberTextField.text?.isEmpty)! && !(passwordTextField.text?.isEmpty)! && !(reEnterPasswordTextField.text?.isEmpty)!{
            //            userInstance.name = nameTextField.text!
            //            userInstance.email = emailTextField.text!
            //            userInstance.password = passwordTextField.text!
            if passwordTextField.text!.count >= 5 && reEnterPasswordTextField.text!.count >= 5{
                if passwordTextField.text! == reEnterPasswordTextField.text!{
                    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
                    navigationController?.navigationBar.tintColor = .black;
                    
                    //                    print("email: \(userInstance.email)")
                    //                    AuthServices.instance.user_checkEmail(email: userInstance.email) { (success) in
                    //                        if(success){
                    //
                    //                            if (AuthServices.instance.checkemailstatus == "Existtss"){
                    //                                ToastView.shared.short(self.view, txt_msg: "Email Already Exists")
                    //                            }else{
                    //                                AuthServices.instance.user_signup(name: self.userInstance.name, password: self.userInstance.password, email: self.userInstance.email) { (success) in
                    //                                    if(success){
                    //                                        ToastView.shared.short(self.view, txt_msg: "signup successfull")
                    //                                        self.navigationController?.pushViewController(CodeVerificationViewController(), animated: true)
                    //                                    }else{
                    //                                        print("signup api not successfull")
                    //                                    }
                    //                                }
                    //                            }
                    //
                    //                        }else{
                    //                            print("api check email not succussfull")
                    //                        }
                    //                    }
                    
                    
                    //                    self.navigationController?.pushViewController(CodeVerificationViewController(), animated: true)
                }
                else{
                    ToastView.shared.short(self.view, txt_msg: "Passwords do not match")
                }
            }
            else{
                ToastView.shared.short(self.view, txt_msg: "Password is too short")
            }
        }
        else{
            ToastView.shared.short(self.view, txt_msg: "Enter all fields")
        }
        
    }
    
    let alreadyHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Already have account?", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.addTarget(self, action: #selector(handleForgotPassword), for:.touchUpInside)
        return button
    }()
    
    @objc func handleForgotPassword(){
        print("forgot")
    }
    
    var topBarHeight: CGFloat = 0
    
    //========================================================================
    //=========================== VIEW WILL APPEAR ===========================
    //========================================================================
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // HIDING NAVBAR
        self.navigationController?.navigationBar.isHidden = false
        //        UIApplication.shared.keyWindow?.windowLevel = UIWindow.Level.normal
    }
    
    //========================================================================
    //=========================== VIEW DID LOAD ==============================
    //========================================================================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topBarHeight = UIApplication.shared.statusBarFrame.size.height +
            (self.navigationController?.navigationBar.frame.height ?? 0.0)
        view.backgroundColor = .white
        self.title = "EMPLOYEE"
        
        
        setupViews()
    }
    
    
    func setupViews(){
        
        view.addSubview(lineSeparator1)
        lineSeparator1.topAnchor.constraint(equalTo: view.topAnchor, constant: topBarHeight).isActive = true
        lineSeparator1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        lineSeparator1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lineSeparator1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        view.addSubview(mainView)
        mainView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: view.frame.height - topBarHeight).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: topBarHeight).isActive = true
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        mainView.addSubview(logoContainerView)
        logoContainerView.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        logoContainerView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.25).isActive = true
        logoContainerView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        logoContainerView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        mainView.addSubview(inputsContainerView)
        inputsContainerView.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        inputsContainerView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.55).isActive = true
        inputsContainerView.topAnchor.constraint(equalTo: logoContainerView.bottomAnchor).isActive = true
        inputsContainerView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        mainView.addSubview(bottomView)
        bottomView.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.2).isActive = true
        bottomView.topAnchor.constraint(equalTo: (inputsContainerView).bottomAnchor).isActive = true
        bottomView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        logoContainerView.addSubview(logoImageView)
        logoImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: logoContainerView.centerYAnchor).isActive = true
        
        inputsContainerView.addSubview(nameTextField)
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameTextField.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: 25).isActive = true
        
        inputsContainerView.addSubview(lineSeparator2)
        lineSeparator2.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator2.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator2.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        inputsContainerView.addSubview(phoneNumberTextField)
        phoneNumberTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        phoneNumberTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        phoneNumberTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        phoneNumberTextField.topAnchor.constraint(equalTo: lineSeparator2.bottomAnchor, constant: 20).isActive = true
        
        inputsContainerView.addSubview(lineSeparator3)
        lineSeparator3.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator3.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator3.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        inputsContainerView.addSubview(passwordTextField)
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: lineSeparator3.bottomAnchor, constant: 20).isActive = true
        
        inputsContainerView.addSubview(lineSeparator4)
        lineSeparator4.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator4.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator4.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator4.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        inputsContainerView.addSubview(reEnterPasswordTextField)
        reEnterPasswordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        reEnterPasswordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        reEnterPasswordTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        reEnterPasswordTextField.topAnchor.constraint(equalTo: lineSeparator4.bottomAnchor, constant: 20).isActive = true
        
        inputsContainerView.addSubview(lineSeparator5)
        lineSeparator5.topAnchor.constraint(equalTo: reEnterPasswordTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator5.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator5.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator5.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        
        inputsContainerView.addSubview(venderCodeTextField)
        venderCodeTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        venderCodeTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        venderCodeTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        venderCodeTextField.topAnchor.constraint(equalTo: lineSeparator5.bottomAnchor, constant: 20).isActive = true
        
        inputsContainerView.addSubview(lineSeparator6)
        lineSeparator6.topAnchor.constraint(equalTo: venderCodeTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator6.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator6.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator6.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        
//        inputsContainerView.addSubview(typeOfBusinessTextField)
//        typeOfBusinessTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
//        typeOfBusinessTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        typeOfBusinessTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
//        typeOfBusinessTextField.topAnchor.constraint(equalTo: lineSeparator6.bottomAnchor, constant: 20).isActive = true
//
//        inputsContainerView.addSubview(lineSeparator7)
//        lineSeparator7.topAnchor.constraint(equalTo: typeOfBusinessTextField.bottomAnchor, constant: 5).isActive = true
//        lineSeparator7.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        lineSeparator7.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
//        lineSeparator7.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
//
//        inputsContainerView.addSubview(typeOfCuisineTextField)
//        typeOfCuisineTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
//        typeOfCuisineTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        typeOfCuisineTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
//        typeOfCuisineTextField.topAnchor.constraint(equalTo: lineSeparator7.bottomAnchor, constant: 20).isActive = true
//
//        inputsContainerView.addSubview(lineSeparator8)
//        lineSeparator8.topAnchor.constraint(equalTo: typeOfCuisineTextField.bottomAnchor, constant: 5).isActive = true
//        lineSeparator8.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        lineSeparator8.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
//        lineSeparator8.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        
        bottomView.addSubview(confirmButton)
        confirmButton.topAnchor.constraint(equalTo: bottomView.topAnchor).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        confirmButton.widthAnchor.constraint(equalTo: bottomView.widthAnchor, constant: -100).isActive = true
        confirmButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
        
        bottomView.addSubview(alreadyHaveAccountButton)
        alreadyHaveAccountButton.topAnchor.constraint(equalTo: confirmButton.bottomAnchor, constant: 10).isActive = true
        alreadyHaveAccountButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        alreadyHaveAccountButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        alreadyHaveAccountButton.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
