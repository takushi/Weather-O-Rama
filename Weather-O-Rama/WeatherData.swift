//
//  WeatherData.swift
//  Weather-O-Rama
//
//  Created by Homma Takushi on 2015/08/01.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

class WeatherData: Subject {
  private var observers: [Observer]
  private var temperature: Float
  private var humidity: Float
  private var pressure: Float
  
  /**
  イニシャライザ
  
  :returns: インスタンス
  */
  init () {
    self.observers = []
    self.temperature = 0.0
    self.humidity = 0.0
    self.pressure = 0.0
  }
  
  /**
  オブザーバを登録します
  
  :param: o オブザーバ
  */
  func registerObserver(observer o: Observer) {
    self.observers += [o]
  }
  
  /**
  オブザーバを削除します
  
  :param: o オブザーバ
  */
  func removeObserver(o: Observer) {
    for var i: Int = 0; i < self.observers.count; i++ {
      if self.observers[i].name == o.name {
        self.observers.removeAtIndex(i)
      }
    }
  }

  /**
  オブザーバに通知します
  */
  func notifyObservers() {
    for o: Observer in self.observers {
        o.update(tmperature: self.temperature, humidity: self.humidity, pressure: self.pressure)
    }
  }
  
  /**
  気象観測所から更新された測定値を取得したときに発生します
  */
  func measurementsChanged() {
      self.notifyObservers()
  }
  
  /**
  気象観測所から測定値を更新します
  
  :param: temp     気温
  :param: humidity 湿度
  :param: pressure 気圧
  */
  func setMesurements(temp: Float, humidity: Float, pressure: Float) {
    self.temperature = temp
    self.humidity = humidity
    self.pressure = pressure
    
    self.measurementsChanged()
  }
}
