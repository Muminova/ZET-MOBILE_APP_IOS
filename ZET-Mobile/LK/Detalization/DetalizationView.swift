//
//  DetalizationView.swift
//  ZET-Mobile
//
//  Created by ScrumTJ on 11/30/21.
//

import UIKit

class DetalizationView: UIView {

    lazy var email_text: UITextField = {
        let textfield = UITextField()
        textfield.frame = CGRect(x: 20, y: 10, width: UIScreen.main.bounds.size.width - 40, height: 50)
        textfield.layer.cornerRadius = 16
        textfield.layer.borderColor = UIColor.white.cgColor
        textfield.layer.borderWidth = 1
        textfield.backgroundColor = UIColor.white
        textfield.placeholder = "Введите e-mail"
        return textfield
    }()
    
    lazy var tab1: UILabel = {
        let title = UILabel()
        title.text = "Новый перевод"
        title.numberOfLines = 0
        title.textColor = .black
        title.font = UIFont.preferredFont(forTextStyle: .subheadline)
        title.font = UIFont.boldSystemFont(ofSize: 19)
        title.lineBreakMode = NSLineBreakMode.byWordWrapping
        title.textAlignment = .center
        //title.frame = CGRect(x: 0, y: 550, width: UIScreen.main.bounds.size.width / 2, height: 50)
        return title
    }()
    
    lazy var tab1Line: UILabel = {
        let title = UILabel()
        //title.frame = CGRect(x: 20, y: 600, width: UIScreen.main.bounds.size.width / 2 - 20, height: 3)
        title.backgroundColor = UIColor(red: 1.00, green: 0.66, blue: 0.00, alpha: 1.00)
        return title
    }()
    
    lazy var tab2: UILabel = {
        let title = UILabel()
        title.text = "История запросов"
        title.numberOfLines = 0
        title.textColor = .gray
        title.font = UIFont.preferredFont(forTextStyle: .subheadline)
        title.font = UIFont.boldSystemFont(ofSize: 19)
        title.lineBreakMode = NSLineBreakMode.byWordWrapping
        title.textAlignment = .center
        //title.frame = CGRect(x: UIScreen.main.bounds.size.width / 2 - 20, y: 550, width: UIScreen.main.bounds.size.width / 2 - 20, height: 50)
            
        return title
    }()
    
    lazy var tab2Line: UILabel = {
        let title = UILabel()
        //title.frame = CGRect(x: UIScreen.main.bounds.size.width / 2, y: 600, width: UIScreen.main.bounds.size.width / 2, height: 10)
        title.backgroundColor = .clear
        return title
    }()
    
    let white_view_back = UIView(frame: CGRect(x: 20, y: 210, width: UIScreen.main.bounds.size.width - 40, height: 200))

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        
    }
    
    private func setupView() {
        backgroundColor = .clear
       
        let white_view_back2 = UIView(frame: CGRect(x: 0, y: 150, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        white_view_back2.backgroundColor = .white
        self.addSubview(white_view_back2)
        self.sendSubviewToBack(white_view_back2)
        
        self.addSubview(email_text)
        self.addSubview(tab1)
        self.addSubview(tab2)
        self.addSubview(tab1Line)
        self.addSubview(tab2Line)
    }

}
