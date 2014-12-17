//
//  ViewController.swift
//  empDemo
//
//  Created by sunil on 12/17/14.
//  Copyright (c) 2014 sunil. All rights reserved.
//

import UIKit


class ViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let X = 5
        println("\(X)")
        return X
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
   
        //let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("c", forIndexPath: indexPath) as UITableViewCell
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        cell.textLabel?.text = "Row #\(indexPath.row)"
        cell.detailTextLabel?.text = "Subtitle  #\(indexPath.row)"
        println("suil")
        var emp = EmployeeClass()
        
        cell.textLabel?.text = "Row #\(emp.employeeName)"
        cell.detailTextLabel?.text = "Subtitle  #\(emp.employeeID)"

        
        
        return cell;
    }
    

    
    
    
}

