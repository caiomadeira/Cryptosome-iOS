//
//  Extensions.swift
//  cryptsome
//
//  Created by Caio Madeira on 09/03/21.
//

import Foundation
import UIKit

extension UIColor {
    
    static let lightBlue = UIColor().hexColors("A7E2FF")
    static let lightBlue2 = UIColor().hexColors("aed4ef")
    static let lightBlue3 = UIColor().hexColors("4796c0")
    static let lightBlue4 = UIColor().hexColors("7cd5f8")
    static let lightGray = UIColor().hexColors("dcdcdc")
    
    func hexColors(_ hex: String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            //hexString.remove(at: hexString.startIndex)
            //hexString = String(hexString[hexString.index(hexString.startIndex, offsetBy: 1)...])
            hexString = String(hexString.dropFirst())
        }
        assert(hexString.count == 6, "Código hexadecimal inválido.")

        //if hexString.count != 6 {
        //    return UIColor.black
        //}
        
        // CONVERSAO DA HEX STRING PARA INT32
        var rgb : UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb) //pesquisar sobre esse &
        
        // retornando a posicao baseado em rgb
        // RGB #000 -> #RED GREEN BLUE
        // Hex Decimal #000000 -> #RED RED GREEN GREEN BLUE BLUE
        return UIColor.init(red: CGFloat((rgb & 0x0FF0000) >> 16) / 255.0,
                            green: CGFloat((rgb & 0x0FF0000) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
        
    }
    
    
    
}
