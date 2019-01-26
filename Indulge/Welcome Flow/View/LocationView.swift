//
//  LocationView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LocationView: UIView {
    
    lazy var locationButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Set Location", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        btn.titleLabel?.textAlignment = .center
        
        return btn
    }()
    
    lazy var asapBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        addShadow(view)
    
        return view
    }()
    
    lazy var asapLabel: UILabel = {
        var label = UILabel()
        label.textColor = #colorLiteral(red: 0, green: 0.5764705882, blue: 1, alpha: 1)
        label.text = "ASAP"
        label.font = UIFont(name: "Avenir-Book", size: 20)
        
        return label
    }()
    
    lazy var preorderLabel: UILabel = {
        var label = UILabel()
        label.textColor = #colorLiteral(red: 0, green: 0.5764705882, blue: 1, alpha: 1)
        label.text = "Pre-order for later"
        label.font = UIFont(name: "Avenir-Book", size: 20)
        
        return label
    }()
    
    lazy var addNewAddressTextField: UITextField = {
        var textField = UITextField()
        textField.placeholder = "Add new address"
        textField.font = UIFont(name: "Avenir-Book", size: 20)
        
        return textField
    }()
    
    lazy var preorderBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        addShadow(view)
        
        return view
    }()
    
    lazy var newAddressBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        addShadow(view)
        
        return view
    }()
    
    lazy var doneButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("DONE", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    func addShadow(_ view: UIView) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 0.05
        view.layer.shadowRadius = 6.0
    }
    
    class Constraints {
        
        static func setLocationButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
        
        static func setAsapBarView(_ barView: UIView, _ view: UIView, topNeighbour: UIView) {
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 40).isActive = true
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        }
        
        static func setPreorderBarView(_ barView: UIView, _ view: UIView, topNeighbour: UIView) {
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 1).isActive = true
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        }
        
        static func setNewAddressBarView(_ barView: UIView, _ view: UIView, topNeighbour: UIView) {
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 48).isActive = true
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        }
        
        static func setAsapLabel(_ label: UILabel, _ view: UIView) {
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17).isActive = true
            label.widthAnchor.constraint(equalToConstant: 51).isActive = true
            label.heightAnchor.constraint(equalToConstant: 27).isActive = true
        }
        
        static func setPreorderLabel(_ label: UILabel, _ view: UIView) {
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17).isActive = true
            label.widthAnchor.constraint(equalToConstant: 165).isActive = true
            label.heightAnchor.constraint(equalToConstant: 27).isActive = true
        }
        
        static func setAddNewAddressTextField(_ textfield: UITextField, _ view: UIView) {
            textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            textfield.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 54).isActive = true
            textfield.widthAnchor.constraint(equalToConstant: 164).isActive = true
            textfield.heightAnchor.constraint(equalToConstant: 27).isActive = true
        }
        
        static func setDoneButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.topAnchor, constant: 396).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(locationButton)
        self.addSubviewLayout(asapBarView)
        self.addSubviewLayout(preorderBarView)
        self.addSubviewLayout(doneButton)
        self.addSubviewLayout(newAddressBarView)
        
        asapBarView.addSubviewLayout(asapLabel)
        preorderBarView.addSubviewLayout(preorderLabel)
        newAddressBarView.addSubviewLayout(addNewAddressTextField)
        
        Constraints.setLocationButton(locationButton, self)
        Constraints.setAsapBarView(asapBarView, self, topNeighbour: locationButton)
        Constraints.setPreorderBarView(preorderBarView, self, topNeighbour: asapBarView)
        Constraints.setNewAddressBarView(newAddressBarView, self, topNeighbour: preorderBarView)
        Constraints.setDoneButton(doneButton, self)
        
        Constraints.setAsapLabel(asapLabel, asapBarView)
        Constraints.setPreorderLabel(preorderLabel, preorderBarView)
        Constraints.setAddNewAddressTextField(addNewAddressTextField, newAddressBarView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

