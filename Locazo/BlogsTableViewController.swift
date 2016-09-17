//
//  ServiceTableViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/12/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit
import FZAccordionTableView


//var selectionState:[[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: ServiceTableViewController.serviceList.count);

class BlogsTableViewController: UITableViewController,FZAccordionTableViewDelegate{
    static fileprivate let kTableViewCellReuseIdentifier = "TableViewCellReuseIdentifier"
    static let serviceList = ["Personal Services",
                              "Home Care & Services",
                              "Repair & Maintenance"
    ];
    
    static let serviceName = [
        ["Car cleaning","Packers & Movers",
            "Baby & Kids Photographer",
            "Maternity Photographer",
            "CCTV Dealer",
            "CA for Small Businesses",
            "Company Registration"
],
        ["Pest Control",
            "Cleaning",
            "Carpet Cleaning",
            "Home Deep Cleaning",
            "Basic Bathroom Cleaning",
            "Bathroom Deep Cleaning",
            "Kitchen Deep Cleaning",
            "Construction & Renovation"
],
        ["Electrician",
            "Plumber",
            "Mobile Repair",
            "AC Service and Repair",
            "Laptop Repair",
            "Refrigerator Repair",
            "Washing Machine Repair",
            "Carpenter"
]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addAppSpecificRightBar()
        self.edgesForExtendedLayout =  []
       // tableView.registerClass(AccordionHeaderView.classForCoder(), forHeaderFooterViewReuseIdentifier: AccordionHeaderView.kAccordionHeaderViewReuseIdentifier)
       tableView.register(UINib(nibName: "AccordionHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: AccordionHeaderView.kAccordionHeaderViewReuseIdentifier)
        //tableView.allowsMultipleSelection = true;
     
//            //tableView.keepOneSectionOpen = true;
//            tableView.initialOpenSections = NSSet(array: [0]) as? Set<NSNumber>
//        }
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
    
    
    func tableView(_ tableView: FZAccordionTableView, canInteractWithHeaderAtSection section: Int) -> Bool{
        return true;
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return BlogsTableViewController.serviceList.count;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0;
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return AccordionHeaderView.kDefaultAccordionHeaderViewHeight
    }
    
  
    
    override func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return self.tableView(tableView, heightForHeaderInSection:section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BlogsTableViewController.kTableViewCellReuseIdentifier, for: indexPath)
        cell.textLabel!.text = BlogsTableViewController.serviceName[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row];
//        if (selectionState[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row] == true){
//        tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
//            cell.accessoryType = .checkmark
//        }else{
//            cell.accessoryType = .none
//        }
////        cell.highlighted = selectionState[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let headerView =  tableView.dequeueReusableHeaderFooterView(withIdentifier: AccordionHeaderView.kAccordionHeaderViewReuseIdentifier) as? AccordionHeaderView{
            headerView.text.text = BlogsTableViewController.serviceList[section];
            //headerView.imageView.image = UIImage(named:"1");
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
