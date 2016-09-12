//
//  ServiceTableViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/12/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit
import FZAccordionTableView

class ServiceTableViewController: UITableViewController,FZAccordionTableViewDelegate{
    static private let kTableViewCellReuseIdentifier = "TableViewCellReuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.registerClass(AccordionHeaderView.classForCoder(), forHeaderFooterViewReuseIdentifier: AccordionHeaderView.kAccordionHeaderViewReuseIdentifier)
       tableView.registerNib(UINib(nibName: "AccordionHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: AccordionHeaderView.kAccordionHeaderViewReuseIdentifier)
//        let inset:CGFloat = 70
//        tableView.contentInset = UIEdgeInsetsMake(inset, 0, 0, 0);
//        let label = UILabel(frame: CGRectMake(30,-inset,tableView.frame.size.width,80));
//        label.text = "Select services you are looking for";
//        self.view.addSubview(label);
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
    
    
    func tableView(tableView: FZAccordionTableView, canInteractWithHeaderAtSection section: Int) -> Bool{
        return true;
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5;
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44.0;
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return AccordionHeaderView.kDefaultAccordionHeaderViewHeight
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.tableView(tableView, heightForRowAtIndexPath: indexPath)
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return self.tableView(tableView, heightForHeaderInSection:section)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ServiceTableViewController.kTableViewCellReuseIdentifier, forIndexPath: indexPath)
        cell.textLabel!.text = "Cell"
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let headerView =  tableView.dequeueReusableHeaderFooterViewWithIdentifier(AccordionHeaderView.kAccordionHeaderViewReuseIdentifier) as? AccordionHeaderView{
            headerView.text.text = "Abcd"
            headerView.imageView.image = UIImage(named:"1");
            return headerView;
        }
        return nil;
    }
    

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
