//
//  TarifToolbarView.swift
//  ZET-Mobile
//
//  Created by ScrumTJ on 11/5/21.
//

import UIKit

class TarifToolbarView: UIView {

    lazy var number_user_name: UILabel = {
        let number_user_name = UILabel()
        number_user_name.text = "+992 91 900 09 44"
        number_user_name.numberOfLines = 0
        number_user_name.textColor = .black
        number_user_name.font = UIFont.preferredFont(forTextStyle: .subheadline)
        number_user_name.font = UIFont.boldSystemFont(ofSize: 18)
        number_user_name.lineBreakMode = NSLineBreakMode.byWordWrapping
        number_user_name.textAlignment = .center
        number_user_name.frame = CGRect(x: 32, y: 10, width: UIScreen.main.bounds.size.width - 32 - 20, height: 28)
        
        return number_user_name
    }()
    
    
    lazy var icon_back: UIButton = {
        let icon_back = UIButton()
        icon_back.setImage(#imageLiteral(resourceName: "back_icon"), for: UIControl.State.normal)
        
        icon_back.frame = CGRect(x: 20, y: 15, width: 11, height: 20)
        //icon_back.addTarget(self, action: #selector(goBack), for: UIControl.Event.touchUpInside)
        return icon_back
    }()
    
    lazy var openmenu: UIButton = {
        let openmenu = UIButton()
        openmenu.setImage(#imageLiteral(resourceName: "menu"), for: UIControl.State.normal)
        
        openmenu.frame = CGRect(x: 380, y: 15, width: 20, height: 14)
        //openmenu.addTarget(self, action: #selector(goback), for: UIControl.Event.touchUpInside)
        return openmenu
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        
    }
    
    private func setupView() {
        backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        self.addSubview(number_user_name)
        self.addSubview(icon_back)
        self.addSubview(openmenu)
    }

    
}
