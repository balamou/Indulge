//
//  MenuView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class MenuView: UIView {
    
    lazy var topBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        
        return view
    }()
    
    lazy var locationButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("75 Laurier Ave", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        btn.titleLabel?.textAlignment = .center
        
        return btn
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    class Constraints {
        
        static func setTopBarView(_ top: UIView, _ view: UIView) {
            top.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            top.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
            top.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            top.heightAnchor.constraint(equalToConstant: 112).isActive = true
        }
        
        static func setLocationButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
        
        static func setTableView(_ table: UITableView, _ view: UIView) {
            table.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10).isActive = true
            table.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            table.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        }
        
        static func setStackView(_ stackView: UIStackView, _ view: UIView) {
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            stackView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            stackView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(tableView)
        self.addSubviewLayout(topBarView)
        topBarView.addSubviewLayout(locationButton)
        
        Constraints.setTopBarView(topBarView, self)
        Constraints.setLocationButton(locationButton, topBarView)
        Constraints.setTableView(tableView, self)
        
        generateTags(tags: ["Pastries", "Croissants"])
    }
    
    func generateTags(tags: [String]){
        let tags = ["All"] + tags
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        
        for item in tags {
            let tagButton = UIButton()
            tagButton.setTitle(item, for: .normal)
            tagButton.backgroundColor = UIColor.red
            stackView.addArrangedSubview(tagButton)
        }
        
        topBarView.addSubviewLayout(stackView)
        Constraints.setStackView(stackView, locationButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
