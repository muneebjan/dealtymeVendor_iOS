//
//  MainViewController.swift
//  DealTyme
//
//  Created by Ali Apple on 10/01/2019.
//  Copyright © 2019 Ali Apple. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    let userInstance = UserInfo.sharedInstance
    let cellId = "cellId"
    let cellId1 = "cellId123"
    var namesArray = [String]()
    var resultArray = [String]()
//    let locationManager = CLLocationManager()
//    var mapView = GMSMapView()
    
    let lineSeparator1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 238, g: 238, b: 239)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let segmentedControlBottomLine1: UIView = {
        let view = UIView()
        //        view.backgroundColor = UIColor(r: 238, g: 238, b: 239)
        view.backgroundColor = UIColor(r: 81, g: 172, b: 59)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let segmentedControlBottomLine2: UIView = {
        let view = UIView()
        //        view.backgroundColor = UIColor(r: 238, g: 238, b: 239)
        view.backgroundColor = UIColor(r: 81, g: 172, b: 59)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var myTableView: UITableView = {
        var table = UITableView()
        //        table.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    

    
    let items = ["Ending Soon", "Ongoing"]
    lazy var segmentedControl: UISegmentedControl = {
        var sc = UISegmentedControl(items: self.items)
        sc.selectedSegmentIndex = 0
        sc.tintColor = .black
        sc.addTarget(self, action: #selector(handleSegmentedControl(sender:)), for: UIControl.Event.valueChanged)
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    @objc func handleSegmentedControl(sender: UISegmentedControl) -> Void{
        let index = sender.selectedSegmentIndex
        switch index {
        case 0:
            segmentedControlBottomLine1.isHidden = false
            segmentedControlBottomLine2.isHidden = true
            self.myTableView.isHidden = false
            setupViews()
        case 1:
            segmentedControlBottomLine1.isHidden = true
            segmentedControlBottomLine2.isHidden = false
            self.myTableView.isHidden = false
            setupViews2()
        default:
            break
        }
    }
    
    var topBarHeight:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.removeBorder()
        segmentedControlBottomLine2.isHidden = true
        view.backgroundColor = .white
        self.navigationItem.setHidesBackButton(true, animated:true)
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 25, height: 20)
        menuBtn.setImage(UIImage(named:"settings"), for: .normal)
        menuBtn.addTarget(self, action: #selector(handleSettingsBarButton), for: UIControl.Event.touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: menuBtn)
        let currWidth = menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 30)
        currWidth?.isActive = true
        let currHeight = menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 25)
        currHeight?.isActive = true
        self.navigationItem.rightBarButtonItem = menuBarItem
        self.navigationItem.title = "LIVE DEALS"

        myTableView.delegate = self
        myTableView.dataSource = self
        self.myTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        topBarHeight = UIApplication.shared.statusBarFrame.size.height +
            (self.navigationController?.navigationBar.frame.height ?? 0.0)
        myTableView.register(EndingSoonCell.self, forCellReuseIdentifier: cellId)
        myTableView.register(OngoingCell.self, forCellReuseIdentifier: cellId1)
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    @objc func handleSettingsBarButton(){
        print("Settings Button Pressed")
    }
    
    func setupViews(){
        view.addSubview(segmentedControl)
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: topBarHeight).isActive = true
        segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(segmentedControlBottomLine1)
        segmentedControlBottomLine1.bottomAnchor.constraint(equalTo: segmentedControl.bottomAnchor).isActive = true
        segmentedControlBottomLine1.widthAnchor.constraint(equalToConstant: view.frame.width/2.0).isActive = true
        segmentedControlBottomLine1.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        segmentedControlBottomLine1.rightAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControlBottomLine1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        view.addSubview(segmentedControlBottomLine2)
        segmentedControlBottomLine2.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: -1).isActive = true
        segmentedControlBottomLine2.widthAnchor.constraint(equalToConstant: view.frame.width/2.0).isActive = true
        segmentedControlBottomLine2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        segmentedControlBottomLine2.leftAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControlBottomLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        view.addSubview(lineSeparator1)
        lineSeparator1.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 0).isActive = true
        lineSeparator1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        lineSeparator1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lineSeparator1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        //
        view.addSubview(myTableView)
        myTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myTableView.topAnchor.constraint(equalTo: segmentedControlBottomLine2.bottomAnchor, constant: 2).isActive = true
        myTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.myTableView.reloadData()
    }
    
    func setupViews2(){
        
        print("2nd setupView")
        view.addSubview(segmentedControl)
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: topBarHeight).isActive = true
        segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(segmentedControlBottomLine1)
        segmentedControlBottomLine1.bottomAnchor.constraint(equalTo: segmentedControl.bottomAnchor).isActive = true
        segmentedControlBottomLine1.widthAnchor.constraint(equalToConstant: view.frame.width/2.0).isActive = true
        segmentedControlBottomLine1.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        segmentedControlBottomLine1.rightAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControlBottomLine1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        view.addSubview(segmentedControlBottomLine2)
        segmentedControlBottomLine2.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: -1).isActive = true
        segmentedControlBottomLine2.widthAnchor.constraint(equalToConstant: view.frame.width/2.0).isActive = true
        segmentedControlBottomLine2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        segmentedControlBottomLine2.leftAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        segmentedControlBottomLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        view.addSubview(lineSeparator1)
        lineSeparator1.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 0).isActive = true
        lineSeparator1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        lineSeparator1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lineSeparator1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        //
        view.addSubview(myTableView)
        myTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myTableView.topAnchor.constraint(equalTo: segmentedControlBottomLine2.bottomAnchor, constant: 2).isActive = true
        myTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        self.myTableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(segmentedControl.selectedSegmentIndex == 0){
            let cell = myTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! EndingSoonCell
            cell.dealHeadingLabel.text = "Happy Monday!"
            cell.dealDescriptionLabel.text = "Monday means a new Starbucks Deal! Don't miss out on these awesome deals starting every monday every week. See you at Starbucks soon, Have a nice day!"
            if indexPath.row == 2{
                cell.dealTypeImageView.image = UIImage(named: "time-left2")
            }
            return cell
        }else{
            let cell = myTableView.dequeueReusableCell(withIdentifier: cellId1, for: indexPath) as! OngoingCell
//            cell.dealHeadingLabel.text = "Happy Monday123123!"
//            cell.dealDescriptionLabel.text = "Monday means a new Starbucks Deal! Don't miss out on these awesome deals starting every monday every week. See you at Starbucks soon, Have a nice day!"
//            if indexPath.row == 2{
//                cell.dealTypeImageView.image = UIImage(named: "time-left2")
//            }
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if(segmentedControl.selectedSegmentIndex == 0){
            return self.view.frame.height/2.5
        }
        else{
            return self.view.frame.height/4.75
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
//        if indexPath.row == 1{
//            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//            navigationController?.navigationBar.tintColor = .black;
//            self.navigationController?.pushViewController(DealPageViewController(), animated: true)
//        }
        print("\(indexPath.row)")
    }

}
