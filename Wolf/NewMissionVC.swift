//
//  NewMissionVC.swift
//  Wolf
//
//  Created by Joshua on 2017/3/8.
//  Copyright © 2017年 whatya. All rights reserved.
//

import UIKit

class NewMissionVC: UIViewController {
    @IBOutlet weak var textView: UITextView!

   override func viewDidLoad() {
        super.viewDidLoad()
    //Create back button of type custom
    
    let myBackButton:UIButton = UIButton(frame:CGRect(x:0, y:0, width:100, height:30))
    myBackButton.setImage(UIImage(named: "back"), for: .normal)
    myBackButton.addTarget(self, action: #selector(NewMissionVC.popToRoot(sender:)), for: .touchUpInside)
    myBackButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -108, bottom: 0, right: 0)

    let myCustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: myBackButton)
    self.navigationItem.leftBarButtonItem  = myCustomBackButtonItem
    
    
    textView.layer.borderWidth = 1.5
    textView.layer.borderColor = UIColor(red: 217/255.0, green: 217/255.0, blue: 217/255.0, alpha: 1).cgColor
    textView.layer.cornerRadius = 3
    
    }
    
    func popToRoot(sender:UIBarButtonItem){
        _ = self.navigationController?.popToRootViewController(animated: true)
    }

    
}
