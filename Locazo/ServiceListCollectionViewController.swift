//
//  ServiceListCollectionViewController.swift
//  Locazo
//
//  Created by Abhiraj Kumar on 9/17/16.
//  Copyright © 2016 Locazo. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
private let headerreuseIdentiifer = "header"
private let footerreuseIdentifier = "footer"


private let serviceName = [
    "Car cleaning","Packers & Movers",
     "Baby & Kids Photographer",
     "Maternity Photographer",
     "CCTV Dealer",
     "CA for Small Businesses",
     "Company Registration"
    ,
    "Pest Control",
     "Cleaning",
     "Carpet Cleaning",
     "Home Deep Cleaning",
     "Basic Bathroom Cleaning",
     "Bathroom Deep Cleaning",
     "Kitchen Deep Cleaning",
     "Construction & Renovation"
    ,
    "Electrician",
     "Plumber",
     "Mobile Repair",
     "AC Service and Repair",
     "Laptop Repair",
     "Refrigerator Repair",
     "Washing Machine Repair",
     "Carpenter"
    
]

var selectionState:[Bool] = Array(repeating: false, count: serviceName.count)



class ServiceListCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addAppSpecificRightBar()
        self.edgesForExtendedLayout =  []
        self.collectionView!.allowsMultipleSelection = true;
        self.collectionView!.allowsSelection = true;
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        if let layout = self.collectionViewLayout as?UICollectionViewFlowLayout{
            layout.sectionFootersPinToVisibleBounds = true;
            layout.sectionHeadersPinToVisibleBounds = true;
            
        }else{
            
        }
//        self.collectionViewLayout.sectionFootersPinToVisibleBounds = true
        //self.collectionView.regis

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return serviceName.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        if let cell = cell as? ServiceListCollectionViewCell{
            cell.text.text
                = serviceName[indexPath.row];
           
        }
    
        // Configure the cell
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.isSelected = selectionState[indexPath.row]
        }
        
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind  == UICollectionElementKindSectionHeader){
            return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:headerreuseIdentiifer , for: indexPath)
        }else{
             return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:footerreuseIdentifier , for: indexPath)
            
        }
    }
    
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        selectionState[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row] = true
//        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//    }
//    
//    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        selectionState[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row] = false
//        tableView.cellForRow(at: indexPath)?.accessoryType = .none
//    }
    

    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectionState[indexPath.row] = true
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
         selectionState[indexPath.row] = false
        
    }
    
//    - (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//    {
//    UICollectionReusableView *reusableview = nil;
//    
//    if (kind == UICollectionElementKindSectionHeader) {
//    RecipeCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
//    NSString *title = [[NSString alloc]initWithFormat:@"Recipe Group #%i", indexPath.section + 1];
//    headerView.title.text = title;
//    UIImage *headerImage = [UIImage imageNamed:@"header_banner.png"];
//    headerView.backgroundImage.image = headerImage;
//    
//    reusableview = headerView;
//    }
//    
//    if (kind == UICollectionElementKindSectionFooter) {
//    UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
//    
//    reusableview = footerview;
//    }
//    
//    return reusableview;
//    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
