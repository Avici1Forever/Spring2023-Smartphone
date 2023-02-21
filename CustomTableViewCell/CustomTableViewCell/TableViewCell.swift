//
//  TableViewCell.swift
//  CustomTableViewCell
//
//  Created by 黑白狗 on 2/20/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgContainer: UIImageView!
    
    @IBOutlet weak var lblImage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
