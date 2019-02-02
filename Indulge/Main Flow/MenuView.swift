//
//  MenuView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class MenuView: UIView {
    
    var didLayoutAlready = false
    let stackSpacing: CGFloat = 8.0
    let padding: CGFloat = 10.0
    var tagButtons: [UIButton] = []
    
    lazy var topBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        return view
    }()
    
    lazy var locationButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("75 Laurier Ave", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "BrandonGrotesque-Light", size: 25)
        btn.titleLabel?.textAlignment = .center
        btn.setImage(Images.locationPinImage, for: .normal)
        btn.imageEdgeInsets.right = 10
        btn.setTitleColor(#colorLiteral(red: 0.3046829104, green: 0.4996926188, blue: 1, alpha: 1), for: .highlighted)
        btn.setImage(Images.locationPinSelectedImage, for: .highlighted)
        
        return btn
    }()
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isScrollEnabled = true
        
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = stackSpacing
        
        return stackView
    }()
    
    lazy var productsTable: UITableView = {
        let table = UITableView()
        table.allowsSelection = false
        table.separatorStyle = .none
        table.backgroundColor = UIColor.clear
        table.register(ProductViewCell.self, forCellReuseIdentifier: ProductViewCell.cellid)
        
        return table
    }()
    
    lazy var checkoutButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("CHECKOUT", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        //btn.isHidden = true
        
        return btn
    }()
    
    func addStyle(_ btn: UIButton, _ color: UIColor) {
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: btn.bounds, cornerRadius: 25.0).cgPath
        shadowLayer.fillColor = color.cgColor
        
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        shadowLayer.shadowOpacity = 0.09
        shadowLayer.shadowRadius = 4
        
        btn.layer.insertSublayer(shadowLayer, at: 0)
    }
    
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
        
        static func setProductsTable(_ table: UITableView, _ topNeighbour: UIView, _ view: UIView) {
            table.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            table.topAnchor.constraint(equalTo: topNeighbour.bottomAnchor, constant: 10).isActive = true
            table.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            table.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        }
        
        static func setStackView(_ stackView: UIStackView, _ view: UIView) {
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
            stackView.heightAnchor.constraint(equalToConstant: 31).isActive = true
        }
        
        static func setCheckoutButton(_ btn: UIButton, _ view: UIView) {
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            btn.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
            btn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            btn.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
        
        static func setScrollView(_ scrollView: UIScrollView, _ view: UIView) {
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            scrollView.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            scrollView.heightAnchor.constraint(equalToConstant: 42).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.insertSublayer(Colors.backround(self.bounds), at: 0)
        
        self.addSubviewLayout(productsTable)
        self.addSubviewLayout(topBarView)
        topBarView.addSubviewLayout(locationButton)
        topBarView.addSubviewLayout(scrollView)
        self.addSubviewLayout(checkoutButton)
        
        Constraints.setTopBarView(topBarView, self)
        Constraints.setLocationButton(locationButton, topBarView)
        Constraints.setProductsTable(productsTable, topBarView, self)
        Constraints.setCheckoutButton(checkoutButton, self)
        Constraints.setScrollView(scrollView, locationButton)
    }

    func generateTags(tags: [String]){
        let tags = ["All"] + tags
        
        var width: CGFloat = 0.0
        
        for item in tags {
            let tagButton = UIButton()
            tagButton.setTitle(item, for: .normal)
            tagButton.setTitleColor(UIColor.black, for: .normal)
            tagButton.setTitleColor(#colorLiteral(red: 0.3046829104, green: 0.4996926188, blue: 1, alpha: 1), for: .highlighted)
            tagButton.titleLabel?.font = UIFont(name: "BrandonGrotesque-Light", size: 20.0)
            width += tagButton.intrinsicContentSize.width + stackSpacing + padding * 2
            
            tagButtons += [tagButton]
            stackView.addArrangedSubview(tagButton)
            tagButton.translatesAutoresizingMaskIntoConstraints = false
        }
        
        scrollView.addSubviewLayout(stackView)
        stackView.widthAnchor.constraint(equalToConstant: width).isActive = true // 🤨🤔 HACK, calculated width on flight
        Constraints.setStackView(stackView, scrollView)
    }
    
    func viewDidLayoutSubviews() {
        if (!didLayoutAlready) {
            didLayoutAlready = true
            
            _ = tagButtons.map{addStyle($0, UIColor.white)}
            let contentSize = scrollView.contentSize
            scrollView.contentSize = CGSize(width: stackView.frame.width, height: contentSize.height)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
