//
//  CellFive.swift
//  NewBusSchedule
//
//  Created by Serik Klement on 23.03.17.
//  Copyright © 2017 Serik Klement. All rights reserved.
//

import UIKit

class CellFive: UITableViewCell {
    
    var sityLabel: UILabel! // объявил что она будет
    var dateFromLabel: UILabel!
    var timeFromLabel: UILabel!
    var dateToLabel: UILabel!
    var timeToLabel: UILabel!
    
    var space: CGFloat? // создаю переменную
    var widthSityLabel: CGFloat?
    var widthOtherLabel: CGFloat?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        sityLabel = createLabel()
        sityLabel.textAlignment = .center
        dateFromLabel = createLabel()
        dateFromLabel.textAlignment = .center
        timeFromLabel = createLabel()
        timeFromLabel.textAlignment = .center
        dateToLabel = createLabel()
        dateToLabel.textAlignment = .center
        timeToLabel = createLabel()
        timeToLabel.textAlignment = .center
            
        }

    required init?(coder aDecoder: NSCoder) { //????? что это
        fatalError("init(coder:) has not been implemented")
    }
    
    func createLabel() -> UILabel {
        
        let label = UILabel()
        label.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(UIScreen.main.bounds.size.width * 0.3), height: CGFloat(self.frame.size.height))
        label.backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        label.adjustsFontSizeToFitWidth = true
        
        self.contentView.addSubview(label)
        
        return label
    }
    
    func setWidthLabels() {
        
        space = 3
        widthSityLabel = UIScreen.main.bounds.size.width * 0.3
        widthOtherLabel = ((UIScreen.main.bounds.size.width - widthSityLabel!) - space! * 4) / 4
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        setWidthLabels()
        
        sityLabel.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: widthSityLabel!, height: CGFloat(self.frame.size.height))
        dateFromLabel.frame = CGRect(x: sityLabel.frame.size.width + space!, y: CGFloat(0), width: widthOtherLabel!, height: CGFloat(self.frame.size.height))
        timeFromLabel.frame = CGRect(x: dateFromLabel.frame.size.width + dateFromLabel.frame.origin.x, y: CGFloat(0), width: widthOtherLabel!, height: CGFloat(self.frame.size.height))
        dateToLabel.frame = CGRect(x: timeFromLabel.frame.size.width + timeFromLabel.frame.origin.x, y: CGFloat(0), width: widthOtherLabel!, height: CGFloat(self.frame.size.height))
        timeToLabel.frame = CGRect(x: dateToLabel.frame.size.width + dateToLabel.frame.origin.x, y: CGFloat(0), width: widthOtherLabel!, height: CGFloat(self.frame.size.height))
        
    }
    

}