//
//  ViewController.swift
//  MusicApp
//
//  Created by あまつき on 2020/10/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // シンバルの音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    // シンバル用のプレイヤーインスタンスを作成
    var cymbalPlayer = AVAudioPlayer()

    @IBAction func cymbal(_ sender: Any) {
        do {
            // シンバル用のプレイヤーに音源ファイル名を設定
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        } catch {
            print("シンバル再生でエラー")
        }
        
        // シンバルの音源再生
        cymbalPlayer.play()
    }
    
    // ギターの音源ファイルを指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    // ギター用のプレイヤーインスタンスを作成
    var guitarPlayer = AVAudioPlayer()

    @IBAction func guitar(_ sender: Any) {
        do {
            // ギター用のプレイヤーに音源ファイル名を設定
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
        } catch {
            print("ギター再生でエラー")
        }
        
        // ギターの音源再生
        guitarPlayer.play()
    }
    
    // バックミュージックの音源ファイルを指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    
    // バックミュージック用のプレイヤーインスタンスを作成
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        do{
            // バックミュージック用のプレイヤーに、音源ファイル名を指定
            backmusicPlayer=try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            
            // リピート再生：-1
            // 1を設定した場合は1回リピートされるため、計2回再生される
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        } catch{
            print("バックミュージック再生時にエラーが発生しました！")
        }
    }
    
    // stopボタンがタップされた時の処理
    @IBAction func stop(_ sender: Any) {
        // バックミュージック停止
        backmusicPlayer.stop()
    }
}

