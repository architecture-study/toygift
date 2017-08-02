//
//  DetailViewController.swift
//  MVC
//
//  Created by jaeseong on 2017. 7. 31..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    //***************************************************************
    // Outlet 변수
    //***************************************************************
    
    @IBOutlet private weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.reloadData()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    //***************************************************************
    // Tableview cell
    //***************************************************************
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return Data.shared.personArray.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Reuse") as! DetailTableViewCell
        
        cell.name.text = Data.shared.personArray[indexPath.row].name
        cell.age.text = Data.shared.personArray[indexPath.row].age
        
        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
