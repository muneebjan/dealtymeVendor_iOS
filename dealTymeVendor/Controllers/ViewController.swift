//
//  ViewController.swift
//  dealTymeVendor
//
//  Created by Apple on 29/01/2019.
//  Copyright © 2019 devstop. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    let mainView: UIView = {
        var view = UIView()
        //        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let logoContainerView: UIView = {
        var view = UIView()
        //        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let inputsContainerView: UIView = {
        var view = UIView()
        //        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomView: UIView = {
        var view = UIView()
        //        view.backgroundColor = .green
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
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 14)
        tf.text = "shami@gmail.com"
        tf.attributedPlaceholder = NSAttributedString(string: "Email",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.autocapitalizationType = .none
//        tf.keyboardType = .numberPad
        tf.layer.masksToBounds = false
        tf.clipsToBounds = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.text = "12345"
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
    
    let lineSeparator1: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lineSeparator2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 80, g:169, b:53)
        button.setTitle("Log in", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 50/2
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(handleLogin), for:.touchUpInside)
        return button
    }()
    
    @objc func handleLogin(){
        
        self.navigationController?.pushViewController(MyTabBarViewController(), animated: true)
        
//        if !(emailTextField.text?.isEmpty)! && !(passwordTextField.text?.isEmpty)! {
//
//            let email = emailTextField.text!
//            let password = passwordTextField.text!
//
//            AuthServices.instance.vendor_login(email: email, password: password) { (success) in
//                if(success){
////                    ToastView.shared.long(self.view, txt_msg: "User Login Successfull")
//                    self.navigationController?.pushViewController(MainViewController(), animated: true)
//                }else{
//                    print("login not successful")
//                    ToastView.shared.long(self.view, txt_msg: "Login Failed")
//                }
//            }
//
////            AuthServices.instance.user_login(email: email, password: password) { (success) in
////                if(success){
////                    print("login successful")
////                    if(AuthServices.instance.loginstatus == "successsful"){
////                        ToastView.shared.long(self.view, txt_msg: "User Login Successfull")
////                    }else{
////                        ToastView.shared.long(self.view, txt_msg: "Login Failed")
////                    }
////
////                }else{
////                    print("login not successful")
////                    ToastView.shared.long(self.view, txt_msg: "Login Failed")
////                }
////            }
//
//        }
//        else{
//            ToastView.shared.short(self.view, txt_msg: "Enter all fields")
//        }
        
    }
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Forgot Password?", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.addTarget(self, action: #selector(handleForgotPassword), for:.touchUpInside)
        return button
    }()
    
    @objc func handleForgotPassword(){
        print("forgot")
    }
    
    lazy var signUpVendorButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Sign up as a vendor", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 50/2
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.gray.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(handleSignUpVendor), for:.touchUpInside)
        return button
    }()
    
    lazy var signUpEmployeeButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Sign up as an employee", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 50/2
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.gray.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(handleSignUpEmployee), for:.touchUpInside)
        return button
    }()
    
    @objc func handleSignUpVendor(){
        print("Sign up vendor button pressed")
        
        let signUpViewController = SignUpVendorViewController()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = .black;
        self.navigationController?.pushViewController(signUpViewController, animated: true)
        
    }
    
    @objc func handleSignUpEmployee(){
        print("Sign up employee button pressed")
        
        let signUpViewController = SignUpEmployeeViewController()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = .black;
        self.navigationController?.pushViewController(signUpViewController, animated: true)
        
    }
    
    let orSignUpWithLabel: UILabel = {
        let label = UILabel()
        let centeredParagraphStyle = NSMutableParagraphStyle()
        centeredParagraphStyle.alignment = .center
        label.attributedText = NSAttributedString(string: "or Sign up with:",
                                                  attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.paragraphStyle: centeredParagraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    
    var topBarHeight: CGFloat = 0
    
//========================================================================
//=========================== VIEW WILL APPEAR ===========================
//========================================================================
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // HIDING NAVBAR
        self.navigationController?.navigationBar.isHidden = true
//        UIApplication.shared.keyWindow?.windowLevel = UIWindow.Level.normal
    }
    
//========================================================================
//=========================== VIEW DID LOAD ==============================
//========================================================================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        topBarHeight = UIApplication.shared.statusBarFrame.size.height + (self.navigationController?.navigationBar.frame.height ?? 0.0)


        
        setupViews()
    }
    
    @objc func setupViews(){
        view.addSubview(mainView)
        mainView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: view.frame.height - topBarHeight).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: topBarHeight).isActive = true
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        mainView.addSubview(logoContainerView)
        logoContainerView.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        logoContainerView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.2).isActive = true
        logoContainerView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        logoContainerView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        mainView.addSubview(inputsContainerView)
        inputsContainerView.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        inputsContainerView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.5).isActive = true
        inputsContainerView.topAnchor.constraint(equalTo: logoContainerView.bottomAnchor).isActive = true
        inputsContainerView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        mainView.addSubview(bottomView)
        bottomView.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.3).isActive = true
        bottomView.topAnchor.constraint(equalTo: (inputsContainerView).bottomAnchor).isActive = true
        bottomView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        logoContainerView.addSubview(logoImageView)
        logoImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: logoContainerView.centerYAnchor).isActive = true
        
        inputsContainerView.addSubview(emailTextField)
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: 25).isActive = true
        
        inputsContainerView.addSubview(lineSeparator1)
        lineSeparator1.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator1.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator1.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        inputsContainerView.addSubview(passwordTextField)
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: logoContainerView.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: lineSeparator1.bottomAnchor, constant: 20).isActive = true
        
        inputsContainerView.addSubview(lineSeparator2)
        lineSeparator2.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5).isActive = true
        lineSeparator2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineSeparator2.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        lineSeparator2.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        inputsContainerView.addSubview(loginButton)
        loginButton.topAnchor.constraint(equalTo: lineSeparator2.bottomAnchor, constant: 50).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        inputsContainerView.addSubview(forgotPasswordButton)
        forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        forgotPasswordButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: -100).isActive = true
        forgotPasswordButton.centerXAnchor.constraint(equalTo: inputsContainerView.centerXAnchor).isActive = true
        
        bottomView.addSubview(signUpVendorButton)
        signUpVendorButton.topAnchor.constraint(equalTo: bottomView.topAnchor).isActive = true
        signUpVendorButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
        signUpVendorButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpVendorButton.widthAnchor.constraint(equalTo: bottomView.widthAnchor, constant: -100).isActive = true
        
        bottomView.addSubview(signUpEmployeeButton)
        signUpEmployeeButton.topAnchor.constraint(equalTo: signUpVendorButton.bottomAnchor, constant: 20).isActive = true
        signUpEmployeeButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
        signUpEmployeeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpEmployeeButton.widthAnchor.constraint(equalTo: bottomView.widthAnchor, constant: -100).isActive = true
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

