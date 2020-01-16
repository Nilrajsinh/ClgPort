//
//  StudentHome.swift
//  Collage Portal
//
//  Created by Nilrajsinh Vaghela on 05/01/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class StudentHome: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    
    var cet = [
        ["Title":"Attendance","Controller":"Attendance"],
        ["Title":"Classnote","Controller":"Classnote"],
        ["Title":"Contact","Controller":"Contact"],
        ["Title":"Food","Controller":"Food"],
        ["Title":"LiveClass","Controller":"LiveClass"],
        ["Title":"LiveLocation","Controller":"Livemap"],
        ["Title":"Event","Controller":"Event"],
        ["Title":"Result","Controller":"Results"]]
    
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCell
        cell.Lbl.text = cet[indexPath.row]["Title"]
        
        cell.layer.borderWidth = 2
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let controller = self.storyboard?.instantiateViewController(withIdentifier: cet[indexPath.row]["Controller"]!)
               self.navigationController?.pushViewController(controller!, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        

        // Do any additional setup after loading the view.
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
