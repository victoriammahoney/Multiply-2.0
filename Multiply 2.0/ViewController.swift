//
//  ViewController.swift
//  Multiply 2.0
//
//  Created by Victoria Mahoney on 2/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Create Outlets
    
    //MARK: Party Mode

    @IBOutlet weak var PartyModeLabel: UILabel!
    
    @IBOutlet weak var BKGDImage: UIImageView!
    
    @IBOutlet weak var PartyModeButtonOutlet: UIButton!
    
    @IBOutlet weak var clickHereForPartyMode: UILabel!
    
    @IBOutlet weak var modButtonOutlet: UIButton!
    
    @IBOutlet weak var divButtonOutlet: UIButton!
    
    @IBOutlet weak var plusButtonOutlet: UIButton!
    
    @IBOutlet weak var minButtonOutlet: UIButton!
    
    
    //MARK: Non Party Mode
    
    @IBOutlet weak var MultiplicationLabel: UILabel!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    //MARK: Universal
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var XSignlabel: UILabel!
    
    @IBOutlet weak var mulButtonOutlet: UIButton!
    
    @IBOutlet weak var yoshiImage: UIImageView!
    
    @IBOutlet weak var catBurritoImage: UIImageView!
    
    @IBOutlet weak var lobsterDogImage: UIImageView!
    
    
    
    
    
    
    //MARK: This is the OVERRIDE
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        BKGDImage.isHidden = true
        divButtonOutlet.isHidden = true
        modButtonOutlet.isHidden = true
        plusButtonOutlet.isHidden = true
        minButtonOutlet.isHidden = true
        PartyModeLabel.isHidden = true
        yoshiImage.isHidden = true
        catBurritoImage.isHidden = true
        lobsterDogImage.isHidden = true
        
        var strInput = textField1.text ?? "8"
        
        var strInput2 = textField2.text ?? "8"
        
    }
    //end of OVERRIDE //
    
    

    @IBAction func mulButtonAction(_ sender: Any) {
    

        var strInput = textField1.text ?? "8"
        
        var strInput2 = textField2.text ?? "8"
        
        let numInput = Int(strInput) ?? 8
        
        let numInput2 = Int(strInput2) ?? 8
        
        var result = numInput * numInput2
        
        if result == 64 {
            //shows yoshi
            catBurritoImage.isHidden = true
            lobsterDogImage.isHidden = true
            yoshiImage.isHidden = false
        }
        else if result%2 == 1 {
            // shows cat burrito
            catBurritoImage.isHidden = false
            lobsterDogImage.isHidden = true
            yoshiImage.isHidden = true
        }
        else {
            // shows lobster
            catBurritoImage.isHidden = true
            lobsterDogImage.isHidden = false
            yoshiImage.isHidden = true
        }
        
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        catBurritoImage.isHidden = true
        lobsterDogImage.isHidden = true
        yoshiImage.isHidden = true
    }
    
    
    
 
    
    
    //MARK: Buttons
    
   /* @IBAction func modButtonAction(_ sender: Any) {
    }
    
    @IBAction func divButtonAction(_ sender: Any) {
    }
    
    @IBAction func plusButtonAction(_ sender: Any) {
    }
    
    @IBAction func minButtonAction(_ sender: Any) {
    }
    
    
    
    
    
    
    
    */
    
    
    
    
    
    
    //MARK: If even
    
    //MARK: If odd
    
    //MARK: Party Mode: If party mode button clicked, multiply button hidden, self,view.backgroundColor = .//party mode color. [[alt mode have party background through ui image view sent backwards

//MARK: REFERENCE SECTION FOR ALL CHANGEABLE VARIABLE FEATURES
/* Here is the reference for text field text
 ==outlet
 ==button func {
 textFieldName, resign first responder ()
 let /// = textFieldName.text
 
 Here is the referece for Image changing
 ==imageOutlet
 let //newname = UIImage(named: "imageName")
 adj. visibility in override func or in button func with:
 outletName.image = //newname
 
 
*/

}
