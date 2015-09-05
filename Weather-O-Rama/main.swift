//
//  main.swift
//  Weather-O-Rama
//
//  Created by Homma Takushi on 2015/08/01.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

var weatherData: WeatherData = WeatherData()
var currentDisplay: CurrentConditionsDisplay = CurrentConditionsDisplay(weatherData: weatherData)
var c: CurrentConditionsDisplay = currentDisplay

weatherData.setMesurements(27, humidity: 65, pressure: 30.4)
weatherData.setMesurements(28, humidity: 70, pressure: 29.2)
weatherData.setMesurements(26, humidity: 90, pressure: 29.2)
