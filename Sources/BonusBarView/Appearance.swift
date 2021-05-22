//
//  Appearance.swift
//  
//
//  Created by Alina on 21/5/21.
//

import Foundation
import UIKit
public struct Appearance {
    public static  func configurePackageUI() {
        loadPackageFonts()
    }

    static func loadPackageFonts() {
        let fontNames = ["OpenSans-Bold.ttf",
                         "OpenSans-Regular.ttf",
        ]
    
        fontNames.forEach{registerFont(fileName: $0)}
    }

    static func registerFont(fileName: String) {
    
        guard let pathForResourceString = Bundle.module.path(forResource: fileName, ofType: nil),
              let fontData = NSData(contentsOfFile: pathForResourceString),
              let dataProvider = CGDataProvider(data: fontData),
              let fontRef = CGFont(dataProvider) else {
            print("*** ERROR: ***")
            return
        }
    
        var errorRef: Unmanaged<CFError>? = nil
    
        if !CTFontManagerRegisterGraphicsFont(fontRef, &errorRef) {
            print("*** ERROR: \(errorRef.debugDescription) ***")
        }
    }
}
