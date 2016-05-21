//
//  ViewQueso.swift
//  PizzaCraft
//
//  Created by Gerardo Alfonso Silva Razo on 20/05/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import UIKit

class ViewQueso: UIViewController {

    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var mensaje: UILabel!
    var tamanoQueso:String?
    var masaQueso:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mozzarella(sender: AnyObject) {
        queso.text="Queso Mozzarella"
        mensaje.text=""
    }
    @IBAction func cheddar(sender: AnyObject) {
        queso.text="Queso Cheddar"
        mensaje.text=""
    }
    @IBAction func parmesano(sender: AnyObject) {
        queso.text="Queso Parmesano"
        mensaje.text=""
    }
    @IBAction func sinQueso(sender: AnyObject) {
        queso.text="Sin Queso"
        mensaje.text=""
    }

    @IBAction func siguiente(sender: AnyObject) {
        if queso.text != "Aún no ha seleccionado un queso"{
            self.performSegueWithIdentifier("segue3", sender: sender)
        }else{
            mensaje.text="*Asegúrese de seleccionar un tipo de queso"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredientes = segue.destinationViewController as! ViewIngredientes
        ingredientes.tamanoIngredientes=tamanoQueso
        ingredientes.masaIngredientes=masaQueso
        ingredientes.quesoIngredientes=queso.text!
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
