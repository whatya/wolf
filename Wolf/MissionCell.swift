//
//  MissionCell.swift
//  Wolf
//
//  Created by Joshua on 2017/3/8.
//  Copyright © 2017年 whatya. All rights reserved.
//

import UIKit

class MissionCell: UITableViewCell {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var missionLB: UILabel!
    @IBOutlet weak var missionDateLB: UILabel!
    @IBOutlet weak var missionGuyLB: UILabel!
    
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var stateLB: UILabel!
    @IBOutlet weak var flashImg: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bottomView.layer.cornerRadius = 4
        confirmBtn.layer.cornerRadius = 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
