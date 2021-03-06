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
    static let height: CGFloat = 243.0
    static let cellid = "Product cell"
    
    let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    let quantityLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.textColor = UIColor.white
        label.font = UIFont(name: "BrandonGrotesque-Bold", size: 30)
        
        return label
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
    
    let productBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        return view
    }()
    
    let addToCartButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.addToCartButtonImage, for: .normal)
        button.setImage(Images.addToCartSelectedImage, for: .highlighted)
        
        return button
    }()
    
    func addShadow(_ view: UIView, shadowOpacity: Float = 0.05, shadowRadius: CGFloat = 5.0) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowRadius = shadowRadius
    }
    
    class Constraints {
        
        static func setProductImageView(_ imageView: UIImageView, _ view: UIView) {
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 162).isActive = true
        }
        
        static func setProductNameLabel(_ label: UILabel, _ view: UIView) {
            label.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        }
        
        static func setPriceLabel(_ label: UILabel, _ view: UIView) {
            label.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        }
        
        static func setAddToCartButton(_ button: UIButton, _ view: UIView) {
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            button.widthAnchor.constraint(equalToConstant: 40).isActive = true
            button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        static func setProductBarView(_ barView: UIView, _ topNeighbour: UIView, _ view: UIView, _ lowestItem: UIView) {
            barView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            barView.bottomAnchor.constraint(equalTo: lowestItem.bottomAnchor, constant: 5).isActive = true
            barView.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor).isActive = true
        }
        
        static func setQuantityLabel(_ label: UILabel, _ view: UIView) {
            label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.clear
        
        self.addSubviewLayout(productImageView)
        self.addSubviewLayout(productBarView)
        self.addSubviewLayout(productNameLabel)
        self.addSubviewLayout(priceLabel)
        self.addSubviewLayout(addToCartButton)
        self.addSubviewLayout(quantityLabel)
        
        addShadow(productBarView, shadowOpacity: 0.08, shadowRadius: 7.0)
        
        Constraints.setProductImageView(productImageView, self)
        Constraints.setProductNameLabel(productNameLabel, productImageView)
        Constraints.setPriceLabel(priceLabel, productNameLabel)
        Constraints.setProductBarView(productBarView, productImageView, self, priceLabel)
        Constraints.setAddToCartButton(addToCartButton, productBarView)
        Constraints.setQuantityLabel(quantityLabel, self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
