//
//  NotificationBubble.swift
//  WorkingWithXibs
//
//  Created by Michael Amiro on 03/07/2019.
//  Copyright © 2019 Michael Amiro. All rights reserved.
//

import UIKit

class NotificationBubble: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var notificationMessage: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializer()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializer()
    }
    
    func initializer(){
        Bundle.main.loadNibNamed("NotificationBubble", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
