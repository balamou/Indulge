//
//  SuggestionViewCell.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-02-01.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class SuggestionViewCell: UITableViewCell {
    
    static let height: CGFloat = 60
    static let cellid = "Suggestion Cell"
    
    lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.text = "318 Berrigan Dr"
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 18)
        
        return label
    }()
    
    lazy var countryLabel: UILabel = {
        let label = UILabel()
        label.text = "Ottawa, Canada"
        label.font = UIFont(name: "BrandonGrotesque-Light", size: 15)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        return label
    }()
    
    class Constraints {
        
        static func setAddressLabel(_ label: UILabel, _ view: UIView) {
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 54).isActive = true
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        }
        
        static func setCountryLabel(_ label: UILabel, _ topNeighbour: UIView) {
            label.leftAnchor.constraint(equalTo: topNeighbour.leftAnchor).isActive = true
            label.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 0).isActive = true
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubviewLayout(addressLabel)
        self.addSubviewLayout(countryLabel)
        
        Constraints.setAddressLabel(addressLabel, self)
        Constraints.setCountryLabel(countryLabel, addressLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
