//
//  FilmesTableViewController.swift
//  Catalogo
//
//  Created by Usuário Convidado on 18/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class FilmesTableViewController: UITableViewController, DetalheViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    @IBAction func buttonTap(sender: UIButton) {
        self.performSegueWithIdentifier("filmeToDetalheSegue", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "filmeToDetalheSegue") {
            let vc:DetalheViewController = segue.destinationViewController as! DetalheViewController
            vc.itemIdx = sender!.tag
            vc.isFromLivro = false
            vc.delegate = self
        }
    }
    
    func buttonTappedWithPart(numTapped:Int) {
            let alert: UIAlertController = UIAlertController(title: "Finalizado", message: "Parte \(numTapped)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
    }
}
