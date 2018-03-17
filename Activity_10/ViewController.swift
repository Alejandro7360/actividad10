//
//  ViewController.swift
//  Activity_10
//
//  Created by Alumno IDS on 16/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    @IBOutlet weak var Reference: UIImageView!
    
    @IBOutlet weak var Reference1: UIImageView!
    
    @IBOutlet weak var Reference2: UIImageView!
    
    @IBOutlet weak var Reference3: UIImageView!
    
    @IBOutlet weak var Reference4: UIImageView!
    
    @IBOutlet weak var Reference5: UIImageView!
    
    @IBOutlet weak var Reference6: UIImageView!
    
    @IBOutlet weak var Reference7: UIImageView!
    
    @IBOutlet weak var Reference8: UIImageView!
    
    @IBOutlet weak var Reference9: UIImageView!
    
    
    @IBOutlet weak var Critrica1: UITextField!
    
    @IBOutlet weak var Critrica2: UITextField!
    @IBOutlet weak var Critrica3: UITextField!
    @IBOutlet weak var Critrica4: UITextField!
    @IBOutlet weak var Critrica5: UITextField!
    @IBOutlet weak var Critrica6: UITextField!
    @IBOutlet weak var Critrica7: UITextField!
    @IBOutlet weak var Critrica8: UITextField!
    @IBOutlet weak var Critrica9: UITextField!
    @IBOutlet weak var Critrica10: UITextField!
    
    @IBOutlet weak var Calificacion1: UILabel!
    @IBOutlet weak var Calificacion2: UILabel!
    @IBOutlet weak var Calificacion3: UILabel!
    @IBOutlet weak var Calificacion4: UILabel!
    @IBOutlet weak var Calificacion5: UILabel!
    @IBOutlet weak var Calificacion6: UILabel!
    @IBOutlet weak var Calificacion7: UILabel!
    @IBOutlet weak var Calificacion8: UILabel!
    @IBOutlet weak var Calificacion9: UILabel!
    @IBOutlet weak var Calificacion10: UILabel!
  
    
    @IBOutlet weak var Dia1: UILabel!
    @IBOutlet weak var Dia2: UILabel!
    @IBOutlet weak var Dia3: UILabel!
    @IBOutlet weak var Dia4: UILabel!
    @IBOutlet weak var Dia5: UILabel!
    @IBOutlet weak var Dia6: UILabel!
    @IBOutlet weak var Dia7: UILabel!
    @IBOutlet weak var Dia8: UILabel!
    @IBOutlet weak var Dia9: UILabel!
    @IBOutlet weak var Dia10: UILabel!
    
    
    
    @IBOutlet weak var Table1: UITableViewCell!
    
    @IBOutlet weak var Table2: UITableViewCell!
    
    @IBOutlet weak var Table3: UITableViewCell!
    
    @IBOutlet weak var Table4: UITableViewCell!
    
    @IBOutlet weak var Table5: UITableViewCell!
    
    @IBOutlet weak var Table6: UITableViewCell!
    
    @IBOutlet weak var Table7: UITableViewCell!
    
    @IBOutlet weak var Table8: UITableViewCell!
    
    @IBOutlet weak var Table9: UITableViewCell!
    
    @IBOutlet weak var Table10: UITableViewCell!
    
    struct Parks {
 var ref : UIImage?
 var critica : String?
 var calificacion : String?
 var Dia : String?
    }
    
    
    public func JalaelJson(){
        let jsonFilePath:NSString = Bundle.main.path(forResource: "parks", ofType: "json")! as NSString
        let jsonData:NSData = NSData.dataWithContentsOfMappedFile(jsonFilePath as String) as! NSData
        let json = JSON(jsonData)
        
         Reference.image = #imageLiteral(resourceName: "DT")
         Reference1.image = #imageLiteral(resourceName: "DW")
         Reference2.image = #imageLiteral(resourceName: "DWP")
         Reference3.image = #imageLiteral(resourceName: "FC")
         Reference4.image = #imageLiteral(resourceName: "LL")
         Reference5.image = #imageLiteral(resourceName: "MA")
         Reference6.image = #imageLiteral(resourceName: "MT")
         Reference7.image = #imageLiteral(resourceName: "SA")
         Reference8.image = #imageLiteral(resourceName: "SF")
         Reference9.image = #imageLiteral(resourceName: "SM")
        
        Critrica1.text = json["Critica11"].string
        Critrica2.text = json["Critica22"].string
        Critrica3.text = json["Critica33"].string
        Critrica4.text = json["Critica44"].string
        Critrica5.text = json["Critica55"].string
        Critrica6.text = json["Critica66"].string
        Critrica7.text = json["Critica77"].string
        Critrica8.text = json["Critica88"].string
        Critrica9.text = json["Critica99"].string
        Critrica10.text = json["Critica100"].string
        
        Calificacion1.text = json["Calificacion11"].string
        Calificacion2.text = json["Calificacion22"].string
        Calificacion3.text = json["Calificacion33"].string
        Calificacion4.text = json["Calificacion44"].string
        Calificacion5.text = json["Calificacion55"].string
        Calificacion6.text = json["Calificacion66"].string
        Calificacion7.text = json["Calificacion77"].string
        Calificacion8.text = json["Calificacion88"].string
        Calificacion9.text = json["Calificacion99"].string
        Calificacion10.text = json["Calificacion100"].string
        
        Dia1.text = json["Dia11"].string
        Dia2.text = json["Dia22"].string
        Dia3.text = json["Dia33"].string
        Dia4.text = json["Dia44"].string
        Dia5.text = json["Dia55"].string
        Dia6.text = json["Dia66"].string
        Dia7.text = json["Dia77"].string
        Dia8.text = json["Dia88"].string
        Dia9.text = json["Dia99"].string
        Dia10.text = json["Dia100"].string
        
      
    }
        

        
        
    
    override func viewDidLoad() {
        JalaelJson()
        print("Charge")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

