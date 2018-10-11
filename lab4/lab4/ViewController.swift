//
//  ViewController.swift
//  lab4
//
//  Created by Karan Motreja on 10/10/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var user = Favorite()
    
    let filename = "test.plist"
    
    @IBAction func unwindSegue(_segue:UIStoryboardSegue)
    {
        teamLabel.text = user.favTeam
        playerLabel.text = user.favPlayer
    }
    
    @IBOutlet weak var teamLabel: UILabel!
    
    @IBOutlet weak var playerLabel: UILabel!
    
    func dataFileURL(_ filename:String) -> URL? {
        
        let urls = FileManager.default.urls(for:.documentDirectory, in: .userDomainMask)
        var url : URL?
        
        url = urls.first?.appendingPathComponent(filename)
        
        return url
    }
    
    override func viewDidLoad() {
        
        let fileURL = dataFileURL(filename)
        
       
        if FileManager.default.fileExists(atPath: (fileURL?.path)!){
            let url = fileURL!
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = PropertyListDecoder()
               
                user = try decoder.decode(Favorite.self, from: data)
                
                teamLabel.text=user.favTeam
                playerLabel.text=user.favPlayer
            } catch {
                print("no file")
            }
        }
        else {
            print("file does not exist")
        }
       
        let app = UIApplication.shared
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.applicationWillResignActive(_:)), name: Notification.Name.UIApplicationWillResignActive, object: app)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @objc func applicationWillResignActive(_ notification: Notification){
        
        let fileURL = dataFileURL(filename)
        
        let encoder = PropertyListEncoder()
        
        encoder.outputFormat = .xml
        do {
            
            let plistData = try encoder.encode(user)
            
            try plistData.write(to: fileURL!)
        } catch {
            print("write error")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

