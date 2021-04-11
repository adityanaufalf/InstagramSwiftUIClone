//
//  UIApplication+Extension.swift
//  InstagramSwiftUIClone
//
//  Created by Aditya Farhan on 09/04/21.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
