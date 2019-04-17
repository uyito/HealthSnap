//
//  SecondViewController.swift
//  HealthSnap
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var imgPic: UIImageView!
    var pic: UIImage?
    
    @IBOutlet var DiagnosisAndSolutionTable: UITableView!
    let DiagnosisAndSolution: Array = ["Diagnosis:","We Have Identified a Deep Cut", "1) Apply direct pressure. Squeeze the wound", "2. Clean the womb Run it under tap water/peroxide/Alcohol.", "3) Add some antibiotic ointment/Band-Aids/Cloth/Tape/Wrap Womb"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.DiagnosisAndSolution.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier:"cell")
        cell.textLabel?.text = DiagnosisAndSolution[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DiagnosisAndSolutionTable.dataSource = self
        DiagnosisAndSolutionTable.delegate = self
        imgPic.image = pic
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

