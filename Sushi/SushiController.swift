//
//  SushiController.swift
//  Sushi
//
//  Created by 松田陽佑 on 2019/03/10.
//  Copyright © 2019 松田陽佑. All rights reserved.
//

import Cocoa

class SushiController: NSViewController {
    
    override func loadView() {
        self.view = NSView()
    }
    
    override func viewDidAppear() {

        let sushiView = NSView()

        sushiView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width + 80, height: self.view.frame.height)
        sushiView.wantsLayer = true
        sushiView.layer?.position = CGPoint(x: 0, y: 0)
        
        self.view.addSubview(sushiView)

        // 🍣を並べる
        for i in 0...10 {
            let sushi = NSTextView(frame: CGRect(x: i*80, y: -2, width: 30, height: 30))
            sushi.string = "🍣"
            sushi.drawsBackground = false
            sushi.font = NSFont.systemFont(ofSize: 20)
            
            sushiView.addSubview(sushi)
        }
        
        // アニメーション
        let anim = CABasicAnimation(keyPath: "position")
        anim.repeatCount = .infinity
        anim.duration = 0.8
        
        anim.fromValue = sushiView.layer?.position
        anim.fromValue = NSValue(point: NSPoint(x: 0, y: 0))
        anim.toValue = NSValue(point: NSPoint(x: -80, y: 0))
        sushiView.layer?.add(anim, forKey: "position")
    }
}
