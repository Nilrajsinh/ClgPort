//
//  HomePage.swift
//  Collage Portal
//
//  Created by Nilrajsinh Vaghela on 02/01/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class HomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Students(_ sender: Any) {
        
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Students")
        self.navigationController?.pushViewController(navigation!, animated: true)
        
        
        
    }
    
    @IBAction func Faculty(_ sender: Any) {
        
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Faculty")
               self.navigationController?.pushViewController(navigation!, animated: true)
        
        
        
        
       }
    
    @IBAction func Parents(_ sender: Any) {
        
        
        let navigation = storyboard?.instantiateViewController(withIdentifier: "Parents")
               self.navigationController?.pushViewController(navigation!, animated: true)
        
        
       }
    
    
    
   

}
