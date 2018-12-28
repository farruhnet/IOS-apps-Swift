//
//  WeatherDataModel.swift
//  WeatherApp
//
// Created by Makhmudov Farrukh
//

import UIKit

class WeatherDataModel {

    //Declare your model variables here
    var temperature : Int = 0
    var condition : Int = 0
    var city : String = ""
    var weatherIconName : String = ""
    
    
    //This method turns a condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {
        
    switch (condition) {
    
        case 0...300 :
            return "Солнечно"
        
        case 301...500 :
            return "Дождь"
        
        case 501...600 :
            return "Ливень"
        
        case 601...700 :
            return "Снегопад"
        
        case 701...771 :
            return "Туман"
        
        case 772...799 :
            return "Ураган"
        
        case 800 :
            return "Солнечно"
        
        case 801...804 :
            return "Облачно"
        
        case 900...903, 905...1000  :
            return "Ураган"
        
        case 903 :
            return "Снег"
        
        case 904 :
            return "Солнечнно"
        
        default :
            return "dunno"
        }

    }
}
