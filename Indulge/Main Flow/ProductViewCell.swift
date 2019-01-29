//
//  ProductCellView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-29.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class ProductViewCell : UITableViewCell {
    // var delegate: ProductCellDelegate?
    static let height: CGFloat = 228.0
    
    let productImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "test1"))
        imageView.contentMode = ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.3882352941, green: 0.3882352941, blue: 0.4117647059, alpha: 1)
        label.text = "Millefeuille Desert with Raspberry"
        label.font = UIFont(name: "BrandonGrotesque-Regular", size: 20)
        
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.1803921569, green: 0.2, blue: 0.3529411765, alpha: 0.83)
        label.text = "$3.99"
        label.font = UIFont(name: "BrandonGrotesque-Bold", size: 20)
        
        return label
    }()
    
    class Constraints {
        
        static func setProductImageView(_ imageView: UIImageView, _ view: UIView) {
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 162).isActive = true
        }
        
        static func setProductLabel(_ label: UILabel, _ view: UIView) {
            label.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            //label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
        
        static func setPriceLabel(_ label: UILabel, _ view: UIView) {
            label.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
            //label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            //label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubviewLayout(productImageView)
        self.addSubviewLayout(productNameLabel)
        self.addSubviewLayout(priceLabel)
       
        Constraints.setProductImageView(productImageView, self)
        Constraints.setProductLabel(productNameLabel, productImageView)
        Constraints.setPriceLabel(priceLabel, productNameLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
