//
//  Music.swift
//  week3
//
//  Created by uju_sy on 2020/05/16.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import Foundation

import UIKit
// Music 모델입니다.
// 멤버 변수가 총 세 개인 Music 구조체를 생성했습니다.
struct Music {
var albumImg: UIImage?
var musicTitle: String
var singer: String
init(title: String, singer: String, coverName: String) {
self.albumImg = UIImage(named: coverName)
self.musicTitle = title
self.singer = singer
}
}
