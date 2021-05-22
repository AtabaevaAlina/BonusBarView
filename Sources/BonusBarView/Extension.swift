//
//  Extension.swift
//  
//
//  Created by Alina on 20/5/21.
//

import Foundation

extension String{
    func toDate(withFormat format: String = "dd MMMM, HH:mm") -> String {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSS"
      guard let date = dateFormatter.date(from: self) else {
        return ""
      }
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let result = formatter.string(from: date)
        return result
    }
}
