//
//  Subject.swift
//  Weather-O-Rama
//
//  Created by Homma Takushi on 2015/08/01.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

/**
*  サブジェクト
*/
protocol Subject {
  
  /**
  オブザーバを登録します
  
  :param: o オブザーバ
  */
  func registerObserver(observer o: Observer)
  
  /**
  オブザーバを削除します
  
  :param: o オブザーバ
  */
  func removeObserver(observer: Observer)
  
  /**
  オブザーバに通知します
  */
  func notifyObservers()
}
