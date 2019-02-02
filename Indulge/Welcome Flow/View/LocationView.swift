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
        btn.setImage(Images.locationPinImage, for: .normal)
        btn.imageEdgeInsets.right = 10
        
        return btn
    }()
    
    // MARK: ASAP
    
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
    
    lazy var asapSelectorButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.selectorOnImage, for: .normal)
        
        return button
    }()
    
    // MARK: PREORDER
    
    lazy var preorderBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        addShadow(view)
        
        return view
    }()
    
    lazy var preorderLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0, green: 0.5764705882, blue: 1, alpha: 1)
        label.text = "Pre-order for later"
        label.font = UIFont(name: "Avenir-Book", size: 20)
        
        return label
    }()
   
    lazy var preorderSelectorButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.selectorOffImage, for: .normal)
        
        return button
    }()
    
    // MARK: NEW ADDRESS
    
    lazy var newAddressBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        addShadow(view)
        
        return view
    }()

    lazy var addressIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.plusIconImage
        
        return imageView
    }()
    
    lazy var addNewAddressTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Add new address"
        textField.font = UIFont(name: "Avenir-Book", size: 20)
        
        return textField
    }()
    
    // MARK: Address Suggestion Table
    
    lazy var addressSuggestionTable: UITableView = {
        let table = UITableView()
        table.register(SuggestionViewCell.self, forCellReuseIdentifier: SuggestionViewCell.cellid)
        table.allowsSelection = false
        let inset = table.separatorInset
        table.separatorInset = UIEdgeInsets.init(top: inset.top, left: 0, bottom: inset.bottom, right: inset.right)
        
        return table
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
        view.layer.shadowRadius = 5.0
    }
    
    class Constraints {
        
        static func setLocationButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
        
        // MARK: ASAP - Constraints
        
        static func setAsapBarView(_ barView: UIView, _ view: UIView, topNeighbour: UIView) {
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 40).isActive = true
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        }
        
        static func setAsapLabel(_ label: UILabel, _ view: UIView) {
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17).isActive = true
            label.widthAnchor.constraint(equalToConstant: 51).isActive = true
            label.heightAnchor.constraint(equalToConstant: 27).isActive = true
        }
        
        static func setAsapSelectorButton(_ button: UIButton, _ view: UIView) {
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        }
        
        // MARK: Preorder - Constraints
        
        static func setPreorderBarView(_ barView: UIView, _ view: UIView, topNeighbour: UIView) {
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 1).isActive = true
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        }
        
        static func setPreorderLabel(_ label: UILabel, _ view: UIView) {
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17).isActive = true
            label.widthAnchor.constraint(equalToConstant: 165).isActive = true
            label.heightAnchor.constraint(equalToConstant: 27).isActive = true
        }
        
        static func setPreorderSelectorButton(_ button: UIButton, _ view: UIView) {
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        }
        
        // MARK: New address - Constraints
        
        static func setNewAddressBarView(_ barView: UIView, _ view: UIView, topNeighbour: UIView) {
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 30).isActive = true
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        }
        
        static func setAddressIconImageView(_ imageView: UIImageView, _ view: UIView) {
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        }
        static func setAddNewAddressTextField(_ textfield: UITextField, _ view: UIView) {
            textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            textfield.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 54).isActive = true
            textfield.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            textfield.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        }
        
        // MARK: Address suggestion table - Constraints
        
        static func setAddressSuggestionTable(_ table: UITableView, _ topNeighbour: UIView, _ view: UIView) {
            table.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            table.widthAnchor.constraint(equalTo: topNeighbour.widthAnchor).isActive = true
            table.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 2).isActive = true
            table.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
        
        static func setDoneButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        // Containers
        self.addSubviewLayout(locationButton)
        self.addSubviewLayout(asapBarView)
        self.addSubviewLayout(newAddressBarView)
        self.addSubviewLayout(addressSuggestionTable)
        self.addSubviewLayout(doneButton)
        
        // Subviews
        asapBarView.addSubviewLayout(asapLabel)
        asapBarView.addSubviewLayout(asapSelectorButton)
        newAddressBarView.addSubviewLayout(addressIconImageView)
        newAddressBarView.addSubviewLayout(addNewAddressTextField)
        
        // Containers First
        Constraints.setLocationButton(locationButton, self)
        Constraints.setAsapBarView(asapBarView, self, topNeighbour: locationButton)
        Constraints.setNewAddressBarView(newAddressBarView, self, topNeighbour: asapBarView)
        Constraints.setDoneButton(doneButton, self)
        Constraints.setAddressSuggestionTable(addressSuggestionTable, newAddressBarView, self)
        
        // Subviews next
        Constraints.setAsapLabel(asapLabel, asapBarView)
        Constraints.setAsapSelectorButton(asapSelectorButton, asapBarView)
        Constraints.setAddressIconImageView(addressIconImageView, newAddressBarView)
        Constraints.setAddNewAddressTextField(addNewAddressTextField, newAddressBarView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

