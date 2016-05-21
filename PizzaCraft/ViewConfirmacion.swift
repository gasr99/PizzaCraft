//
//  ViewConfirmacion.swift
//  PizzaCraft
//
//  Created by Gerardo Alfonso Silva Razo on 20/05/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import UIKit

class ViewConfirmacion: UIViewController {

    @IBOutlet weak var tamano: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    @IBOutlet weak var mensaje: UILabel!
    var tamanoConfirmacion:String?
    var masaConfirmacion:String?
    var quesoConfirmacion:String?
    var ingredientesConfirmacion:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tamano.text=tamanoConfirmacion
        masa.text=masaConfirmacion
        queso.text=quesoConfirmacion
        ingredientes.text=ingredientesConfirmacion
    }

    @IBAction func ordenar(sender: AnyObject) {
        mensaje.text="Orden Confirmada✅🍕"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
