//
//  WindowController.swift
//  Sushi
//
//  Created by 松田陽佑 on 2019/03/10.
//  Copyright © 2019 松田陽佑. All rights reserved.
//

import Cocoa

fileprivate extension NSTouchBarItem.Identifier {
    static let sushiID = NSTouchBarItem.Identifier("jp.food.toolbar.sushi")
}

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @available(OSX 10.12.2, *)
    override func makeTouchBar() -> NSTouchBar? {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.sushiID]
        
        return mainBar
    }

}

@available(OSX 10.12.2, *)
extension WindowController: NSTouchBarDelegate {
    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItem.Identifier) -> NSTouchBarItem? {
        
        if identifier == .sushiID {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = SushiController()
            
            return item
        }
        
        return nil
    }
}
