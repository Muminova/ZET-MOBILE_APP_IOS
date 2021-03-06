//
//  AboutViewCell.swift
//  ZET-Mobile
//
//  Created by ScrumTJ on 1/8/22.
//

import UIKit

class AboutViewCell: UITableViewCell {
    
    let icon = UIImageView()
    let button = UIButton()
    let titleOne = UILabel()
    let titleTwo = UILabel()

override func awakeFromNib() {
    super.awakeFromNib()
    
}

override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: .default, reuseIdentifier: "about_cell")
    backgroundColor = .clear
    
    contentView.addSubview(icon)
    contentView.addSubview(button)
    contentView.addSubview(titleOne)
    contentView.addSubview(titleTwo)
    
    contentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 130)
    
    icon.frame = CGRect(x: 20, y: 10, width: 50, height: 50)
    icon.image = UIImage(named: "about_app")
    
    button.frame = CGRect(x: UIScreen.main.bounds.size.width - 50, y: 20, width: 30, height: 30)
    button.setImage(#imageLiteral(resourceName: "next_arrow"), for: UIControl.State.normal)
    
    titleOne.frame = CGRect(x: 80, y: 10, width: 240, height: 30)
    titleOne.text = "ZET-Music"
    titleOne.numberOfLines = 1
    titleOne.textColor = .black
    titleOne.font = UIFont.systemFont(ofSize: 20)
    titleOne.textAlignment = .left
    
    titleTwo.frame = CGRect(x: 80, y: 40, width: 340, height: 30)
    titleTwo.text = "Музыка и аудио"
    titleTwo.numberOfLines = 1
    titleTwo.textColor = .lightGray
    titleTwo.font = UIFont.systemFont(ofSize: 15)
    titleTwo.textAlignment = .left
    
}

override func layoutSubviews() {
    super.layoutSubviews()
}

required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

}

