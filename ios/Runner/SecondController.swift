//
//  SecondController.swift
//  Runner
//
//  Created by sang on 21/10/23.
//

import UIKit
var labelText  = ""
var print_speedText  = ""
class SecondController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var print_speed_minus: UIButton!
    
    @IBOutlet weak var print_speed_quantity: UITextField!
    
    @IBOutlet weak var print_speed_plus: UIButton!
    @IBOutlet weak var density_label: UILabel!
    @IBOutlet weak var density_slider: UISlider!
    @IBOutlet weak var print_copy_quantity: UITextField!
    @IBOutlet weak var print_copy_minus: UIButton!
    @IBOutlet weak var print_copy_plus: UIButton!
    
    @IBOutlet weak var uiview_connect_ornot: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Pokemon")
        labelText = print_copy_quantity.text!
        print(print_copy_quantity.text)
        density_slider.minimumValue = 0
        density_slider.maximumValue = 20
        
        print_speedText = print_speed_quantity.text!
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
                
                // Add the gesture recognizer to your view
        uiview_connect_ornot.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
        
        let contentSize = CGSize(width: scrollview.frame.size.width, height: scrollview.frame.size.height)
        scrollview.contentSize = contentSize
    }
    func scrollScrollViewToPosition() {
            let targetContentOffset = CGPoint(x: 0, y: 500) // Adjust the Y-coordinate to your desired position
        scrollview.setContentOffset(targetContentOffset, animated: true)
        }
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
           // Handle the tap gesture here
           print("Tap Gesture Recognized")
        let storyboard = UIStoryboard(name: "SecondStoryBoard", bundle: nil)
        let secondController = storyboard.instantiateViewController(withIdentifier: "bluelistcontroller") as! BluetothListController
        
present(secondController, animated: true, completion: nil)
        
       }
    
    @IBAction func print_speed_plus_operation(_ sender: UIButton) {
        print("hellow")
        print_speedText = print_speed_quantity.text!
       print(print_speedText)
        if let intValue2 = Int(print_speedText) {
            // The conversion was successful, and intValue now contains the integer value.
            print("Integer value: \(intValue2)")
            if(intValue2 >= 100){
                
            }
            else
            {
                let  minus: Int = intValue2 + 1
                print_speed_quantity.text = String(minus)
            }
        } else {
            // The conversion failed. The string does not represent a valid integer.
            print("Conversion to Int failed")
        }
    
    }
    @IBAction func print_speed_minus_operation(_ sender: UIButton) {
        print("hellow")
        print_speedText = print_speed_quantity.text!
       print(print_speedText)
        if let intValue = Int(print_speedText) {
            // The conversion was successful, and intValue now contains the integer value.
            print("Integer value: \(intValue)")
            if(intValue <= 0)
            {
                
            }
            else
            {
                let  minus: Int = intValue - 1
                print_speed_quantity.text = String(minus)
            }
        } else {
            // The conversion failed. The string does not represent a valid integer.
            print("Conversion to Int failed")
        }
    }
    @IBAction func slidervaluechanged(_ sender: UISlider) {
        let roundedValue = round(sender.value)
        sender.value = roundedValue
        density_label.text = Int(sender.value).description
    }
   
    @IBAction func print_copy_plus_operation(_ sender: UIButton) {
        
        print("hellow")
        labelText = print_copy_quantity.text!
       print(labelText)
        if let intValue2 = Int(labelText) {
            // The conversion was successful, and intValue now contains the integer value.
            print("Integer value: \(intValue2)")
            if(intValue2 >= 100){
                
            }
            else
            {
                let  minus: Int = intValue2 + 1
                print_copy_quantity.text = String(minus)
            }
        } else {
            // The conversion failed. The string does not represent a valid integer.
            print("Conversion to Int failed")
        }
    
    }
    @IBAction func print_copy_minus_operation(_ sender: UIButton) {
        print("hellow")
        labelText = print_copy_quantity.text!
       print(labelText)
        if let intValue = Int(labelText) {
            // The conversion was successful, and intValue now contains the integer value.
            print("Integer value: \(intValue)")
            if(intValue <= 0)
            {
                
            }
            else
            {
                let  minus: Int = intValue - 1
                print_copy_quantity.text = String(minus)
            }
        } else {
            // The conversion failed. The string does not represent a valid integer.
            print("Conversion to Int failed")
        }
    }
}
