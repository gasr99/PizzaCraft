//
//  ViewIngredientes.swift
//  PizzaCraft
//
//  Created by Gerardo Alfonso Silva Razo on 20/05/16.
//  Copyright © 2016 Gerardo Silva. All rights reserved.
//

import UIKit

class ViewIngredientes: UIViewController {
    @IBOutlet weak var lblingredientes: UILabel!
    @IBOutlet weak var mensaje: UILabel!
//Variables anteriores
    var tamanoIngredientes:String?
    var masaIngredientes:String?
    var quesoIngredientes:String?
//Variables nuevas
    var num:Int=0
    var ingredienteBoton:String?
    var paso:String=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblingredientes.text=""
        num=0
        paso=""
    }
    
    func ingredientesElegidos(){
        if num<=5{
            paso = paso+ingredienteBoton!+"\n"
            lblingredientes.text=paso
        }else{
            lblingredientes.text="Máximo 5 Ingredientes"
            num=0
            paso=""
        }
        
    }
    
    //Botones
    @IBAction func aceitunas(sender: AnyObject) {
        num+=1
        ingredienteBoton="Aceitunas"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func anchoas(sender: AnyObject) {
        num+=1
        ingredienteBoton="Anchoas"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func arrachera(sender: AnyObject) {
        num+=1
        ingredienteBoton="Arrachera"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func atun(sender: AnyObject) {
        num+=1
        ingredienteBoton="Atún"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func camarones(sender: AnyObject) {
        num+=1
        ingredienteBoton="Camarones"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func cebolla(sender: AnyObject) {
        num+=1
        ingredienteBoton="Cebolla"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func jalapenos(sender: AnyObject) {
        num+=1
        ingredienteBoton="Jalapeños"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func jamon(sender: AnyObject) {
        num+=1
        ingredienteBoton="Jamón"
        mensaje.text=""
        ingredientesElegidos()
        }
    @IBAction func pavo(sender: AnyObject) {
        num+=1
        ingredienteBoton="Pavo"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func pepperoni(sender: AnyObject) {
        num+=1
        ingredienteBoton="Pepperoni"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func pimiento(sender: AnyObject) {
        num+=1
        ingredienteBoton="Pimiento"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func pina(sender: AnyObject) {
        num+=1
        ingredienteBoton="Piña"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func pollo(sender: AnyObject) {
        num+=1
        ingredienteBoton="Pollo"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func salchicha(sender: AnyObject) {
        num+=1
        ingredienteBoton="Salchicha"
        mensaje.text=""
        ingredientesElegidos()
    }
    @IBAction func tocino(sender: AnyObject) {
        num+=1
        ingredienteBoton="Tocino"
        mensaje.text=""
        ingredientesElegidos()
    }

    @IBAction func siguiente(sender: AnyObject) {
        if num != 0{
            self.performSegueWithIdentifier("segue4", sender: sender)
        }else{
            mensaje.text="*Asegúrese de seleccionar al menos 1 ingrediente"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let confirmacion = segue.destinationViewController as! ViewConfirmacion
        confirmacion.tamanoConfirmacion=tamanoIngredientes
        confirmacion.masaConfirmacion=masaIngredientes
        confirmacion.quesoConfirmacion=quesoIngredientes
        confirmacion.ingredientesConfirmacion=paso
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
