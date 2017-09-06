//
//  CustomTableViewCell.swift
//  AnimateTableView_Leon
//
//  Created by lai leon on 2017/9/6.
//  Copyright © 2017 clem. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    //colors和locations是需要注意的地方，Colors填充的渐变颜色，locations是渐变位置结束的位置；
    //渐变的区域通过startPoint和endPoint控制,采用单位坐标系，位置从0到1
    let gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        let color1 = UIColor(white: 1.0, alpha: 0.4).cgColor
        let color2 = UIColor(white: 0.8, alpha: 0.3).cgColor
        let color3 = UIColor(white: 0.5, alpha: 0.5).cgColor
        let color4 = UIColor(white: 0.0, alpha: 0.05).cgColor
        gradientLayer.colors = [color1, color2, color3, color4]
        gradientLayer.locations = [0.0, 0.04, 0.95, 1]
        return gradientLayer
    }()

    //override
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layer.insertSublayer(gradientLayer, at: 0)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
    }
}
