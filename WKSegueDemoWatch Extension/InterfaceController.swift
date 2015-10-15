//
//  InterfaceController.swift
//  WKSegueDemoWatch Extension
//
//  Created by Stephen on 15/10/2015.
//  Copyright © 2015 lumiator.technology.com. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblTitle: WKInterfaceLabel!
    @IBAction func btnNew() {
    }
    
    override init() {
        super.init()
        lblTitle.setText("Segue")
        setTitle("Main")
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        var context:AnyObject?
        if segueIdentifier == "pushSegue" {
            context = "Pushed!"
        }
        return context
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
