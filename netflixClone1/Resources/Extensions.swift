//
//  Extensions.swift
//  netflixClone1
//
//  Created by Zeki Furkan Durum on 3.08.2023.
//

import Foundation

extension String {
    func capitallizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
