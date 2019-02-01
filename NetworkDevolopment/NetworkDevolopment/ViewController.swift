//
//  ViewController.swift
//  NetworkDevolopment
//
//  Created by Rebecca Zhang on 2019/1/31.
//  Copyright © 2019 Rebecca Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
    
    let getRequestURL = "https://orangevalleycaa.org/api/videos.php"
    let imageURL = "https://b-ssl.duitang.com/uploads/item/201605/19/20160519222713_yjzAT.jpeg"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func getRequestAction(_ sender: UIButton) {
        fetchTextData(url: getRequestURL)
    }
    
    @IBAction func downloadImageAction(_ sender: UIButton) {
        fetchBinaryData(url: imageURL)
    }
    
    @IBAction func downloadFileAction(_ sender: UIButton) {
        downloadFile(url: imageURL)
    }
    
    @IBAction func downloadWithProgressAction(_ sender: UIButton) {
        if progress.progress > 0 {
            progress.progress = 0
        }
        downloadWithProgress(url: imageURL)
    }
    
    func downloadWithProgress(url: String) {
        if let urlToServer = URL.init(string: url) {
            var request = URLRequest(url: urlToServer, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 10)
            request.addValue("", forHTTPHeaderField: "Accept-Encoding")
            let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
            let task = session.downloadTask(with: request)
            task.resume()
        }
    }
    
    // URLSessionDownloadDelegate method
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("Download finished. Path: \(location.path)")
        let locationPath = location.path
        let documnets: String = NSHomeDirectory() + "/Documents/2.png"
        let fileManager = FileManager.default
        try! fileManager.moveItem(atPath: locationPath, toPath: documnets)
        print("new location:\(documnets)")
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        DispatchQueue.main.async {
            self.progress.setProgress(Float(totalBytesWritten)/Float(totalBytesExpectedToWrite), animated: true)
        }
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64) {
        print("breakpoint resume")
    }
    
    func downloadFile(url: String) {
        if let urlToServer = URL.init(string: url) {
            let task = URLSession.shared.downloadTask(with: urlToServer, completionHandler: { (fileURL, response, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                guard fileURL != nil else {
                    print("There is no data.")
                    return
                }
                if let data = try? Data.init(contentsOf: fileURL!) {
                    DispatchQueue.main.async {
                        self.imageView.image = UIImage(data: data)
                    }
                }
                
            })
            task.resume()
        }
    }
    
    func fetchBinaryData(url: String) {
        if let urlToServer = URL.init(string: url) {
            let task = URLSession.shared.dataTask(with: urlToServer) { (data, response, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                guard data != nil else {
                    print("There is no data.")
                    return
                }
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                }
            }
            task.resume()
        }
    }
    
    func fetchTextData(url: String) {
        if let urlToServer = URL.init(string: url) {
            let task = URLSession.shared.dataTask(with: urlToServer) { (data, response, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                if data == nil {
                    print("There is no data.")
                } else {
                    if let jsonObject = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) {
                        print(jsonObject)
                    }
                }
            }
            task.resume()
        }
    }
}

