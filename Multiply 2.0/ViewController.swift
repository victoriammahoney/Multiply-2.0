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
    
    @IBOutlet weak var BKGDImage: UIImageView!
    
    @IBOutlet weak var PartyModeButtonOutlet: UIButton!
    
    @IBOutlet weak var partyModeLabel: UILabel!
    
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
        yoshiImage.isHidden = true
        catBurritoImage.isHidden = true
        lobsterDogImage.isHidden = true
        partyModeLabel.isHidden = true
        ResultLabel.isHidden = true
        
        _ = textField1.text ?? "8"
        
        _ = textField2.text ?? "8"
        
    }
    //end of OVERRIDE //
    
    
//MARK: Multiply
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
            
            ResultLabel.isHidden = false
            ResultLabel.text = "\(result)"
            
            
        }
        
        
    }
//MARK: Reset Button
    @IBAction func resetButton(_ sender: Any) {
        catBurritoImage.isHidden = true
        lobsterDogImage.isHidden = true
        yoshiImage.isHidden = true
        ResultLabel.isHidden = true
    }
    
    
//MARK: Party Mode Button
    @IBAction func partyModeButton(_ sender: Any) {
        
        modButtonOutlet.isHidden = false
        divButtonOutlet.isHidden = false
        plusButtonOutlet.isHidden = false
        minButtonOutlet.isHidden = false
        clickHereForPartyMode.isHidden = true
        PartyModeButtonOutlet.isHidden = true
        ResultLabel.isHidden = true
        partyModeLabel.isHidden = false
        BKGDImage.isHidden = false
        MultiplicationLabel.isHidden = true
        XSignlabel.isHidden = true
        ResultLabel.isHidden = true
        
        
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        BKGDImage.isHidden = true
        divButtonOutlet.isHidden = true
        modButtonOutlet.isHidden = true
        plusButtonOutlet.isHidden = true
        minButtonOutlet.isHidden = true
        yoshiImage.isHidden = true
        catBurritoImage.isHidden = true
        lobsterDogImage.isHidden = true
        partyModeLabel.isHidden = true
        ResultLabel.isHidden = true
        MultiplicationLabel.isHidden = false
        clickHereForPartyMode.isHidden = false
        PartyModeButtonOutlet.isHidden = false
        
        _ = textField1.text ?? "8"
        
        _ = textField2.text ?? "8"
        
    }
    
    
 
    
    

    
//MARK: Modulus
    @IBAction func modButtonAction(_ sender: Any) {
    
        XSignlabel.isHidden = false
        XSignlabel.text = "%"
        
        var strInput = textField1.text ?? "8"
        
        var strInput2 = textField2.text ?? "8"
        
        let numInput = Int(strInput) ?? 8
        
        let numInput2 = Int(strInput2) ?? 8
        
        var result = numInput % numInput2
        
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
            
            ResultLabel.isHidden = true
            //ResultLabel.text = "\(result)"
        }
    
    }
        
   
//MARK: Divide
    @IBAction func divButtonAction(_ sender: Any) {
    
        XSignlabel.isHidden = false
        XSignlabel.text = "/"
        
        var strInput = textField1.text ?? "8"
        
        var strInput2 = textField2.text ?? "8"
        
        let numInput = Int(strInput) ?? 8
        
        let numInput2 = Int(strInput2) ?? 8
        
        var result = numInput / numInput2
        
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
            
            ResultLabel.isHidden = true
            //ResultLabel.text = "\(result)"

        }
    }
    

//MARK: Addition
    @IBAction func plusButtonAction(_ sender: Any) {
   
        XSignlabel.isHidden = false
        XSignlabel.text = "+"
            
            var strInput = textField1.text ?? "8"
            
            var strInput2 = textField2.text ?? "8"
            
            let numInput = Int(strInput) ?? 8
            
            let numInput2 = Int(strInput2) ?? 8
            
            var result = numInput + numInput2
            
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
                
                ResultLabel.isHidden = true
                //ResultLabel.text = "\(result)"
        
            }
        
    }
    
    
    
    
    /*
    */
//MARK: Subtraction
    @IBAction func minButtonAction(_ sender: Any) {
        
        XSignlabel.isHidden = false
        XSignlabel.text = "-"
            
            var strInput = textField1.text ?? "8"
            
            var strInput2 = textField2.text ?? "8"
            
            let numInput = Int(strInput) ?? 8
            
            let numInput2 = Int(strInput2) ?? 8
            
            var result = numInput - numInput2
            
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
                
                ResultLabel.isHidden = true
                //ResultLabel.text = "\(result)"
            }
        
    }
    
    
    
    
    


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
