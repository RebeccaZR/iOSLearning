//
//  ButtonViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createDefaultButtonByCode()
        createCustomerButton()
        createAnotherButton()
    }
    
    private func createDefaultButtonByCode() {
        let button = UIButton(type: UIButton.ButtonType.contactAdd)
        button.frame = CGRect(x: 10, y: 180, width: 110, height: 30)
        button.setTitle(" Add Button", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(defaultButtonTappedWithoutParam), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    
    private func createCustomerButton() {
        let customerButton = UIButton(type: UIButton.ButtonType.custom)
        customerButton.frame = CGRect(x: 10, y: 240, width: 150, height: 30)
        customerButton.setTitle("Mobile Button", for: UIControl.State.normal)
        customerButton.setImage(UIImage(named: "login"), for: UIControl.State.normal)
        customerButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        customerButton.setTitleColor(UIColor.darkGray, for: UIControl.State.highlighted)
        customerButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        
//        customerButton.adjustsImageWhenDisabled = false
//        customerButton.adjustsImageWhenHighlighted = false
        
        customerButton.addTarget(self, action: #selector(customerButtonTapped), for: UIControl.Event.touchUpOutside)
        self.view.addSubview(customerButton)
    }
    
    private func createAnotherButton() {
        let anotherButton = UIButton(type: UIButton.ButtonType.custom)
        anotherButton.frame = CGRect(x: 10, y: 320, width: 150, height: 50)
        anotherButton.setTitle("Another Button", for: UIControl.State.normal)
        anotherButton.setTitle("Clicked Button", for: UIControl.State.highlighted)
        anotherButton.setBackgroundImage(UIImage(named: "button"), for: UIControl.State.normal)
        anotherButton.setBackgroundImage(UIImage(named: "button"), for: UIControl.State.highlighted)
        self.view.addSubview(anotherButton)
    }
    
    @objc private func customerButtonTapped(button: UIButton) {
        label.text = "You click customer button."
        print("\(button.title(for: UIControl.State.highlighted)!)")
    }
    
    @objc private func defaultButtonTappedWithoutParam(button: UIButton) {
        label.text = "You click the default button that created by code."
        print("\(button.title(for: UIControl.State.normal)!)")
    }
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        label.text = "You clicked a normal button."
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
