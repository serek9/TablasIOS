//
//  ViewController.swift
//  PrimerasTablas
//
//  Created by DAM on 13/12/16.
//  Copyright © 2016 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var numero = 0;
    
    @IBOutlet weak var valor: UISlider!
    @IBOutlet weak var tabla: UITableView!
    
    @IBAction func slideBar(sender: AnyObject) {
        //Cogemos el valor del slidebar
        numero = Int(valor.value)
        //Recargamos la tabla
        tabla.reloadData()
    }
    
    override func viewDidLoad() {super.viewDidLoad()}

    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
    //Numero de celdas
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    //Valor de las celdas
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let micelda = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "celda")
        micelda.textLabel?.text = "\(numero) X \(indexPath.row) = \(numero * indexPath.row)"
        return micelda
    }

}

