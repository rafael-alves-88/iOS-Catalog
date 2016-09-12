//
//  LivrosViewController.swift
//  Catalogo
//
//  Created by Usuário Convidado on 18/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class LivrosViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTap(sender: UIButton) {
        self.performSegueWithIdentifier("livroToDetalheSegue", sender:sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "livroToDetalheSegue") {
            let vc:DetalheViewController = segue.destinationViewController as! DetalheViewController
            vc.itemIdx = sender!.tag
            vc.isFromLivro = true
        }
    }
}
