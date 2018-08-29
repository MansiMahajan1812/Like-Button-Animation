//
//  ViewController.swift
//  LikeButtonAnnimation
//
//  Created by Mansi Mahajan on 8/1/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var numberOfRows = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vc = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        return vc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == .delete) {
            tableView.deleteRows(at: [indexPath as IndexPath], with: .automatic)
            numberOfRows = numberOfRows-1
            
//            let LM_ITEM = lebensmittel[indexPath.row]
//            managedObjectContext?.deleteObject(lebensmittel[indexPath.row])
//            self.DatenAbrufen()
            
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }


}

