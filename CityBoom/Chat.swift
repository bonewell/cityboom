//
//  Chat.swift
//  CityBoom
//
//  Created by Константин Колодий on 29.07.2020.
//  Copyright © 2020 Константин Колодий. All rights reserved.
//

import Foundation
import AppKit

/// Represents interactions with user.
class Chat {
    /// Text to speech interface.
    private let tts = NSSpeechSynthesizer();
    
    /// Say text.
    ///
    /// - Parameter text: text to say.
    func say(_ text: String) {
        print("Game:", text);
        tts.startSpeaking(text);
    }
    
    /// Listens user.
    ///
    /// - Returns: user phrase.
    func listen() -> String? {
        let name = readLine();
        print("User:", name ?? "");
        return name;
    }
}
