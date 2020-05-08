//
//  ViewController.swift
//  WorkingWithXibs
//
//  Created by Michael Amiro on 01/07/2019.
//  Copyright © 2019 Michael Amiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notification: NotificationBubble!
    @IBOutlet weak var blur: UIVisualEffectView!
    override func viewDidLoad() {
        super.viewDidLoad()
        notification.notificationMessage.text = "Hey, uuum it seems that it is too late to change your order. On the bright side, at least you ordered…"
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        notification.addGestureRecognizer(tap)
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        UIView.animate(withDuration: 0.3, animations: {
            self.notification.alpha = 0
        }) { _ in
            self.notification.isHidden = true
        }
    }


}

