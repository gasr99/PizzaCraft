//
//  ViewTamano.swift
//  PizzaCraft
//
//  Created by Gerardo Alfonso Silva Razo on 20/05/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import UIKit

class ViewTamano: UIViewController {
    @IBOutlet weak var tamano: UILabel!
    @IBOutlet weak var mensaje: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chica(sender: AnyObject) {
        tamano.text="Pizza Chica"
        mensaje.text=""
    }
    @IBAction func mediana(sender: AnyObject) {
        tamano.text="Pizza Mediana"
        mensaje.text=""
    }
    @IBAction func grande(sender: AnyObject) {
        tamano.text="Pizza Grande"
        mensaje.text=""
    }
    
    @IBAction func siguiente(sender: AnyObject) {
        if tamano.text != "Aún no ha seleccionado un tamaño"{
            self.performSegueWithIdentifier("segue1", sender: sender)
        }else{
            mensaje.text="*Asegúrese de seleccionar un tamaño"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaMasa=segue.destinationViewController as! ViewMasa
        vistaMasa.tamanoMasa=tamano.text!
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
