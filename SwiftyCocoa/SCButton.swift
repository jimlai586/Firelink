//
//  SCButton.swift
//  DevTemplate
//
//  Created by jimlai on 2018/5/8.
//  Copyright © 2018年 jimlai. All rights reserved.
//

import UIKit

extension UIViewController {
    func fat(_ sel: Selector) -> (UIButton) -> () {
        let action: (UIButton) -> () = { but in
            but.addTarget(self, action: sel, for: .touchUpInside)
        }
        return action
    }
}


infix operator <<
func <<(_ lhs: UIButton, _ rhs: (UIButton) -> ()) {
    rhs(lhs)
}
