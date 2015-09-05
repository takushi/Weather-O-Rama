//
//  Observer.swift
//  Weather-O-Rama
//
//  Created by Homma Takushi on 2015/08/01.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

/**
*  オブザーバ
*/
protocol Observer {
  
  /// 名称
  var name: String { get }
  
  /**
  気象情報を更新します。
  
  :param: temp     気温
  :param: humidity 湿度
  :param: pressure 気圧
  */
  func update(tmperature temp: Float, humidity humi: Float, pressure press: Float)
}
