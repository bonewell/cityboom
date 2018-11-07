//
//  StitchInspector.swift
//  CityBoom
//
//  Created by Константин Колодий on 07/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

class StitchInspector {
    func verify(last: City, next: City) -> Bool {
        return getLastLetter(last.name.lowercased()) == getFirstLetter(next.name.lowercased());
    }
    
    private func getLastLetter(_ name: String) -> Character {
        return name[name.index(before: name.endIndex)];
    }
    
    private func getFirstLetter(_ name: String) -> Character {
        return name[name.startIndex];
    }
}
