//
//  main.swift
//  CityBoom
//
//  Created by Константин Колодий on 04/11/2018.
//  Copyright © 2018 Константин Колодий. All rights reserved.
//

import Foundation

print("This is game about your knowledge of world cities.");

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
                   "minsk": City(12, "Minsk")]);
var chain = Chain();
let inspector = StitchInspector();

var name: String = ""
chain.add(City(9, "Paris"));
print("Paris");
while (name != "exit") {
    print("type name of a city:");
    name = readLine() ?? "exit";
    print(name);
    
    let city = world.findCity(name);
    if (city == nil) {
        print("Sorry! I don't know this city. Type another.");
        continue;
    }

    if (chain.isUsed(city!)) {
        print("Sorry! But this city is already used. Type another.");
        continue;
    }

    if (!StitchInspector.verify(last: chain.last()!, next: city!)) {
        print("Sorry! Name of the city should start from another letter.");
        continue;
    }

    chain.add(city!);
}



