//
//  Item1.swift
//  Meep
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum Item1Mapping {
	static let id = "id"
}

public class Item1 : Item {
	
	var id : String?
	
	// MAR: - <Item>

	public var identifier: AnyObject? {
		guard let identifier = id else {
			return ""
		}
		return identifier
	}
	
	required public init?(dictionary: NSDictionary?) {
    
        retrieve(dictionary)
    }
	
	public func retrieve(dictionary: NSDictionary?) {
     
        guard let dic = dictionary else {
            return
        }
        
 		id = dic[Item1Mapping.id] as? String
		
	   
    }
}
	

