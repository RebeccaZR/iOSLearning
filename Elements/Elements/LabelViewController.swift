//
//  LabelViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/7.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController {

    @IBOutlet weak var normalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        normalLabel.text = "It's a normal label."
        
        createNormalLabelByCode()
        createMutipleLineLabelByCode()
        createAutoFitHeightLabel()
        createAttributedLabel()
        createAnotherAttributedLabel()
    }
    
    func createNormalLabelByCode() {
        let normalLabel1 = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: 150), size: CGSize(width: 300, height: 30)))
        normalLabel1.text = "It's a label created by code."
        normalLabel1.backgroundColor = UIColor.blue
        self.view.addSubview(normalLabel1)
    }
    
    func createMutipleLineLabelByCode() {
        let mutipleLineLabel = UILabel(frame: CGRect(x: 10, y: 300, width: 300, height: 60))
        mutipleLineLabel.numberOfLines = 0
        mutipleLineLabel.text = "Apply the code to create a label to display multiple lines of text."
        mutipleLineLabel.backgroundColor = UIColor.yellow
        self.view.addSubview(mutipleLineLabel)
    }

    func createAutoFitHeightLabel() {
        let position = CGPoint(x: 10, y: 380)
        let autoFitHeightLabel = UILabel.init()
        autoFitHeightLabel.backgroundColor = UIColor.purple
        autoFitHeightLabel.textColor = UIColor.white
        autoFitHeightLabel.numberOfLines = 0
        autoFitHeightLabel.text = "It's a label that could fit its height follow the text."
        let size = CGSize(width: 300, height: 2000)
        let msgSize = autoFitHeightLabel.sizeThatFits(size)
        autoFitHeightLabel.frame = CGRect(origin: position, size: msgSize)
        self.view.addSubview(autoFitHeightLabel)
    }
    
    func createAttributedLabel() {
        let attributedLabel = UILabel(frame: CGRect(x: 10, y: 400, width: 300, height: 60))
        let labelText = "It's an attributed label."
        
        let strokeTextAttributes = [
            NSAttributedString.Key.strokeColor : UIColor.black,
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.strokeWidth : -2.0,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)
            ] as [NSAttributedString.Key : Any]
        
        attributedLabel.attributedText = NSAttributedString(string: labelText, attributes: strokeTextAttributes)
        self.view.addSubview(attributedLabel)
    }
    
    func createAnotherAttributedLabel() {
        let anotherAttributedLabel = UILabel(frame: CGRect(x: 10, y: 500, width: 300, height: 60))
        let attributedString = NSMutableAttributedString(string: "It's another attributed label.")
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 18), range: NSRange(location: 0, length: 1))
        attributedString.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.blue, range: NSRange(location: 3, length: 4))
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange(location: 10, length: 5))
        attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: UIColor.lightGray, range: NSRange(location: 10, length: 5))
        anotherAttributedLabel.attributedText = attributedString
        self.view.addSubview(anotherAttributedLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
