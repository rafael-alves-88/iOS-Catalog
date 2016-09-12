//
//  DetalheViewController.swift
//  Catalogo
//
//  Created by Usuário Convidado on 18/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var itemTituloLabel: UILabel!
    @IBOutlet weak var part1Button: UIButton!
    @IBOutlet weak var part2Button: UIButton!
    
    var delegate: DetalheViewControllerDelegate?
    var itemIdx: Int = 0
    var isFromLivro: Bool = false
    
    var livrosArr: [String] = ["Futebol - Uma janela para o Brasil", "A terra dos sonhos", "Manga", "Como se faz"]
    var filmesArr:[String] = ["2012", "Avatar", "Thor", "Underworld"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(isFromLivro) {
            closeButton.hidden = false
            part1Button.hidden = true
            part2Button.hidden = true
    
            tituloLabel.text = "Livro"
            itemTituloLabel.text = livrosArr[itemIdx]
        } else {
            closeButton.hidden = false
            part1Button.hidden = false
            part2Button.hidden = false
    
            tituloLabel.text = "Filme"
            itemTituloLabel.text = filmesArr[itemIdx]
        }
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeTap(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func buttonPartTap(sender: UIButton) {
        self.navigationController?.popToRootViewControllerAnimated(true)
        self.delegate?.buttonTappedWithPart(sender.tag)
    }
}

protocol DetalheViewControllerDelegate: class {
    func buttonTappedWithPart(numTapped:Int)
}