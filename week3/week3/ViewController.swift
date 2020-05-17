//
//  ViewController.swift
//  week3
//
//  Created by uju_sy on 2020/05/16.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    
    private var musicList: [Music] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMusicList()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
   
   private func setMusicList() {
    let music1 = Music(title: "아이유", singer: "삐삐", coverName: "album_iu")
    let music2 = Music(title: "album_vibe", singer: "가을 타나봐", coverName: "바이브")
    let music3 = Music(title: "album_yangdail", singer: "고백", coverName: "양다일")
    let music4 = Music(title: "album_im", singer: "하루도 그대를 사랑하지 않은 적이 없었다", coverName: "임창정")
    let music5 = Music(title: "album_smtm7", singer: "Save (Feat. 팔로알토)", coverName: "루피(Loopy)")
    let music6 = Music(title: "album_ziont", singer: "멋지게 인사하는 법 (Feat. 슬기)", coverName: "Zion.T")
    let music7 = Music(title: "album_bts", singer: "IDOL", coverName: "방탄소년단")
    let music8 = Music(title: "album_loco", singer: "시간이 들겠지 (Feat. Colde)", coverName: "로꼬")
    let music9 = Music(title: "album_paul", singer: "모든 날, 모든 순간", coverName: "폴킴")
    let music10 = Music(title: "album_shaun", singer: "Way Back Home", coverName: "숀(SHAUN)")
      musicList = [music1, music2, music3, music4, music5, music6, music7, music8, music9, music10]
      }
}

extension ViewController: UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return musicList.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
  
}

extension ViewController: UIPickerViewDelegate{
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                            forComponent component: Int)->String?{
        return musicList[row].musicTitle
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int){
        albumImageView.image = musicList[row].albumImg
        titleLabel.text = musicList[row].musicTitle
        singerLabel.text = musicList[row].singer
    }
}
