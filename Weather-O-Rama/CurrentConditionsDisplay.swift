//
//  CurrentConditionsDisplay.swift
//  Weather-O-Rama
//
//  Created by Homma Takushi on 2015/08/01.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// 現在の気象情報を表示します
class CurrentConditionsDisplay: Observer, DisplayElement {
  let name: String = "CurrentConditionsDisplay"
  
  private var temperature: Float
  private var humidity: Float
  private var weathereData: Subject
  
  /**
  イニシャライザ
  
  :param: weatherData 気象情報観測所
  
  :returns: インスタンス
  */
  init(weatherData: Subject) {
    self.temperature = 0.0
    self.humidity = 0.0
    
    self.weathereData = weatherData
    self.weathereData.registerObserver(observer: self)
  }
  
  /**
  気象情報を更新します
  
  :param: temp  気温
  :param: humi  湿度
  :param: press 気圧
  */
  func update(tmperature temp: Float, humidity humi: Float, pressure press: Float) {
    self.temperature = temp
    self.humidity = humi
    
    self.display()
  }
  
  /**
  気象情報を表示します
  */
  func display() {
    println("現在の気象状況：温度" + String(stringInterpolationSegment: self.temperature) + "度 湿度" + String(stringInterpolationSegment:self.humidity) + "%")
  }
}
