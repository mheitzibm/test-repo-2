//
//  MenuViewController.swift
//  Meep
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class MenuViewController: CollectionViewController<MenuItem>, UICollectionViewDelegate, UICollectionViewDataSource {

    typealias Cell = MosaicCell

	
    override init() {
        
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("Menu")
        
		navigationItem.title = NSLocalizedString("Menu", comment: "")
       
        items = [
			MenuItem(text: "EMPLOYEES", action: NavigationAction<EmployeesViewController>(rootViewController: self), image: "EMPLOYEES251500.png"),
			MenuItem(text: "STATUS", action: NavigationAction<StatusViewController>(rootViewController: self), image: "STATUS126809.png"),
			MenuItem(text: "NEWS", action: NavigationAction<NewsViewController>(rootViewController: self), image: "NEWS859600.png"),
			MenuItem(text: "CONTACT", action: NavigationAction<ContactInformationViewController>(rootViewController: self), image: "CONTACT504969.png"),
	
        ]
       
		numberOfColumns = 2
		
		collectionView.delegate = self
        collectionView.dataSource = self
        collectionView?.registerClass(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
		

        for behavior in self.behaviors {
            behavior.load()
        }
        
		updateViewConstraints()
    }
   
    // MARK: <UICollectionViewDatasource>
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell

        let item = items[indexPath.row]

        cell.titleLabel.text = item.text
        cell.photoImageView.loadImage(item.image)
        cell.userInteractionEnabled = false
        if let action = item.action where action.canBeExecuted() {
            cell.userInteractionEnabled = true
        }
        
        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count;
    }
    
    // MARK: - <UICollectionViewDelegate>
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        collectionView.deselectItemAtIndexPath(indexPath, animated: true)
        
        let item = items[indexPath.row]
        item.action?.execute()
    }
}

