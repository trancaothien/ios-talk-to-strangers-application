//
//  UIView+Subviews.swift
//

import UIKit

extension UIView {

    func addSubviews(_ views: UIView...) {
        do {
            try views.forEach(addSubview)
        } catch {
            print("Add subviews is error: \n")
            print(error)
        }
    }
}
