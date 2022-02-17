//
//  ViewController.swift
//  Multiply 2.0
//
//  Created by Victoria Mahoney on 2/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Create Outlets
    var myImage = UIImage(named: " ")
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //label that says click here for party mode [hide for party mode]
    @IBOutlet weak var clickHereForPartyMode: UILabel!
    
    //label header that says "party mode" //only for party mode
    @IBOutlet weak var PARTYMODElabel: UILabel!
    
    //label that says multiplicationapp, only for normal mode
    @IBOutlet weak var MultiplicationApp: UILabel!
    
    //textField
    @IBOutlet weak var textField1: UITextField!
    
    //textField2
    @IBOutlet weak var textField2: UITextField!
    
    //signageLabel [must be changeable]
    @IBOutlet weak var signageLabel: UILabel!
    
    //fullsizeimage
    @IBOutlet weak var partyModeBKGDimage: UIImageView!
    
    //image view for math products
    @IBOutlet weak var imageViewProduct: UIImageView!
    //all of the following are outlets so that the buttons can be hidden and shown
    @IBOutlet weak var xButtonOutlet: UIButton!
    
    @IBOutlet weak var modButtonOutlet: UIButton!
    
    @IBOutlet weak var divButtonOutlet: UIButton!
    
    @IBOutlet weak var plusButtonOutlet: UIButton!

    @IBOutlet weak var minButtonOutlet: UIButton!
    
    @IBOutlet weak var MultiplyButton: UIButton!
    
    
    
    //MARK: This is the OVERRIDE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PARTYMODElabel.isHidden = true
        xButtonOutlet.isHidden = true
        modButtonOutlet.isHidden = true
        divButtonOutlet.isHidden = true
        plusButtonOutlet.isHidden = true
        minButtonOutlet.isHidden = true
       
    }
    //end of OVERRIDE //
    //end of OVERRIDE //
    
    


    
    //PARTY MODE BUTTON that turns it into party mode. Make sure you turn down visibility on the multiply button and the click here.

    //NOMRAL MULTIPLY BUTTON
    @IBAction func multiplyButton(_ sender: Any) {
        
       
        
        imageViewProduct.image = myImage
        
        var field1 = textField1.text ?? ""
        
        var field2 = textField2.text ?? ""
        
        var numInput1: Int {
            return Int(field1) ?? 2
        }
        
        /*  */
        
        var numInput2: Int {
            return Int(field2) ?? 2
        }
        
        var result = numInput1 * numInput2
        
        var Even = result.isMultiple(of: 2)
        
        var Odd = !result.isMultiple(of: 2)

        if result == 64 {
            let myImage = UIImage(named: "Yoshi")
        }
        else {

            switch Even {
            case Even:
                myImage = UIImage(named: "Cat Burrito")
            default:
                myImage = UIImage(named: "Cat Burrito")
            }
            
            switch Odd {
            case Odd:
                myImage = UIImage(named: "AA Milne")
            default:
                myImage = UIImage(named: "AA Milne")
            }
            
        }
        
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
    
}
    
    //@IBAction func partyModeButton(_ sender: Any) {
    //}
    
    //Party MULTIPLY
    //@IBAction func partyMultiply(_ sender: Any) {
        
        
    //}
    
    //PARTY MODULUS
    //@IBAction func partyModulus(_ sender: Any) {
    //}
    
    //PARTY DIVIDE
    //@IBAction func partyDivide(_ sender: Any) {
    //}
    
    //PARTY ADD
    //@IBAction func partyAdd(_ sender: Any) {
    //}
    
    //PARTY SUBTRACT
    //@IBAction func partySubtract(_ sender: Any) {
    //}
    
    
    //MARK: If = 64
    
    
    
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
