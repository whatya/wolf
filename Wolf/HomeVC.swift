//
//  HomeVC.swift
//  Wolf
//
//  Created by Joshua on 2017/3/7.
//  Copyright © 2017年 whatya. All rights reserved.
//

import UIKit

class HomeVC : UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var leftLine: UIView!
    @IBOutlet weak var rightLine: UIView!
    
    @IBOutlet weak var leftLB: UILabel!
    @IBOutlet weak var rightLB: UILabel!
    
    let checkedColor = UIColor(red: 41/255.0, green: 133/255.0, blue: 213/255.0, alpha: 1)
    
    var leftChecked = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //导航栏透明
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        //线圆角
        leftLine.layer.cornerRadius = 1.5;
        rightLine.layer.cornerRadius = 1.5;
        
        updateCheck()
        
        //tableView
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func toogle(_ sender: UITapGestureRecognizer) {
        
        if sender.view?.tag == 101 {
            leftChecked = true
        } else {
            leftChecked = false
        }
        
        updateCheck()
    }
    func updateCheck() {
        leftLine.backgroundColor = UIColor.white
        rightLine.backgroundColor = UIColor.white
        leftLB.textColor = UIColor.black
        rightLB.textColor = UIColor.black
        
        if leftChecked {
            leftLine.backgroundColor = checkedColor
            leftLB.textColor = checkedColor
        } else {
            rightLine.backgroundColor = checkedColor
            rightLB.textColor = checkedColor
        }
    }
    
}

extension HomeVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MissionCell = tableView.dequeueReusableCell(withIdentifier: "MissionCell") as! MissionCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
}

