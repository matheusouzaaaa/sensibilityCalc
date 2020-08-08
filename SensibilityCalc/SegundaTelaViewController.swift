//
//  SegundaTelaViewController.swift
//  SensibilityCalc
//
//  Created by Matheus Souza on 18/07/2020.
//  Copyright © 2020 Matheus Souza. All rights reserved.
//

import UIKit

class SegundaTelaViewController: UIViewController {

    @IBOutlet weak var txtSensibilidade: UITextField!
    @IBOutlet weak var lblValorant: UILabel!
    @IBOutlet weak var lblPubg: UILabel!
    @IBOutlet weak var lblCod: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calcular(_ sender: Any) {
        calcularSensibilidade()
    }
    
    func calcularSensibilidade(){
        
        if let valor = txtSensibilidade.text{
            if let v = Double(valor){
                let resultValorant = v/3.18
                lblValorant.text = String(format: "%.2f",resultValorant)
                
                let resultPubg = v*0.2
                lblPubg.text = String(format: "%.2f",resultPubg)
                
                let resultCod = v*0.15/2
                lblCod.text = String(format: "%.2f",resultCod)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
