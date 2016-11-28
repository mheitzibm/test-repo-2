//
//  StuffFormViewController.swift
//  Meep
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class StuffFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? NewsScreen1DSItem
    
		let titleField = StringField(name: NewsScreen1DSItemMapping.title, label: "Title", required: false, value: item?.title)
        contentView.addSubview(titleField)
		
		let subtitleField = StringField(name: NewsScreen1DSItemMapping.subtitle, label: "Subtitle", required: false, value: item?.subtitle)
        contentView.addSubview(subtitleField)
		
		let contentField = StringField(name: NewsScreen1DSItemMapping.content, label: "Content", required: false, value: item?.content)
        contentView.addSubview(contentField)
		
		let dateField = DateField(name: NewsScreen1DSItemMapping.date, label: "Date", required: false, value: item?.date)
        contentView.addSubview(dateField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

