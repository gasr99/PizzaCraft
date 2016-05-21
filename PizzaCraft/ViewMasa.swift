//
//  ViewMasa.swift
//  PizzaCraft
//
//  Created by Gerardo Alfonso Silva Razo on 20/05/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController {

    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var mensaje: UILabel!
    var tamanoMasa:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func delgada(sender: AnyObject) {
        masa.text="Masa Delgada"
        mensaje.text=""
    }
    @IBAction func crujiente(sender: AnyObject) {
        masa.text="Masa Crujiente"
        mensaje.text=""
    }
    @IBAction func gruesa(sender: AnyObject) {
        masa.text="Masa Gruesa"
        mensaje.text=""
    }
    
    @IBAction func siguiente(sender: AnyObject) {
        if masa.text != "Aún no ha seleccionado un tipo de masa"{
            self.performSegueWithIdentifier("segue2", sender: sender)
        }else{
            mensaje.text="*Asegúrese de seleccionar un tipo de masa"
        }
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaQueso=segue.destinationViewController as! ViewQueso
        vistaQueso.tamanoQueso=tamanoMasa
        vistaQueso.masaQueso=masa.text!
    }

    
    //FALTA ENVIAR LAS VARIABLES A LA SIGUIENTE VISTA
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
