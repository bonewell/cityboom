//
//  main.swift
//  CityBoom
//
//  Created by Константин Колодий on 04/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation
import AppKit

print("This is a game about your knowledge of world cities.");
print("Type exit to finish the game.");

let str = try String(contentsOf: URL(fileURLWithPath: "cityboom.csv"));
let world = World(WorldStorage.read(str));
let game = Game(world, Intellect(world));
let speech = NSSpeechSynthesizer();

func start() {
    speech.startSpeaking("Let's start the game!");
    sleep(2);
    let _ = next();
}

func next() -> Bool {
    let (result, message) = game.go();
    print(message);
    speech.startSpeaking(message);
    return result;
}

func process(_ name: String) -> Bool {
    if name.isEmpty {
        print("Name me city, please!");
        speech.startSpeaking("Name me city, please!");
        return false;
    }
    
    let (result, message) = game.examine(name);
    if !result {
        print(message);
    }
    speech.startSpeaking(message);
    sleep(1);
    return result;
}

func exit(_ name: String) -> Bool {
    if name == "exit" {
        print("You lose!");
        speech.startSpeaking("You lose!");
        return true;
    }
    return false;
}

start();
while let name = readLine(), !exit(name) {
    if process(name) && !next() {
        break;
    }
}
sleep(1);
