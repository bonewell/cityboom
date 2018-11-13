//
//  main.swift
//  CityBoom
//
//  Created by Константин Колодий on 04/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

print("This is a game about your knowledge of world cities.");
print("Type exit to finish the game.");

let world = World(["moscow": City(1, "Moscow"),
                   "sofia": City(2, "Sofia"),
                   "irkutsk": City(3, "Irkutsk"),
                   "angarsk": City(4, "Angarsk"),
                   "kiev": City(5, "Kiev"),
                   "kursk": City(6, "Kursk"),
                   "volgograd": City(7, "Volgograd"),
                   "varna": City(8, "Varna"),
                   "paris": City(9, "Paris"),
                   "london": City(10, "London"),
                   "berlin": City(11, "Berlin"),
                   "minsk": City(12, "Minsk"),
                   "warsaw": City(13, "Warsaw")]);
var chain = Chain();
let inspector = StitchInspector();
let intellect = Intellect(world);

func start() {
    let city = intellect.play(chain)!;
    chain.add(city);
    print(city.name);
}

func next() -> Bool {
    if let city = intellect.play(chain) {
        chain.add(city);
        print(city.name);
        return true;
    } else {
        return false;
    }
}

func process(_ name: String) -> Bool {
    if name.isEmpty {
        print("Name me city, please!");
        return false;
    }
    
    if let city = world.find(name) {
        if (chain.isUsed(city)) {
            print("Sorry! But this city is already used. Type another.");
            return false;
        }
        
        if (!StitchInspector.verify(last: chain.last()!, next: city)) {
            print("Sorry! Name of the city should start from another letter.");
            return false;
        }
        
        chain.add(city);
        return true;
    } else {
        print("Sorry! I don't know this city. Type another.");
        return false;
    }
}

start();
while let name = readLine() {
    if name == "exit" {
        print("You lose!");
        break;
    }
    
    if !process(name) {
        continue;
    }

    if !next() {
        print("You win!");
        break;
    }
}
