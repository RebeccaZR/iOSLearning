//
//  SliderAndProgressBarViewController.swift
//  Elements
//
//  Created by Rebecca Zhang on 2019/1/25.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class SliderAndProgressBarViewController: MyUIViewController {
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeValue(_ sender: UISlider) {
        valueLabel.text = "\(sender.value)"
        progressBar.setProgress(sender.value / 100, animated: true)
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if progressBar.progress >= 1 {
            progressBar.progress = 0
        }
        activityIndicator.startAnimating()
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.progressBar.progress += 0.1
            if self.progressBar.progress >= 1 {
                timer.invalidate()
                self.activityIndicator.stopAnimating()
            }
        }
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
