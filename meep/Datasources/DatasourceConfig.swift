//
//  DatasourceConfig.swift
//  Meep
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation
 
 enum DatasourceConfig {

	
	enum Local {

		enum EmptyDatasource{
			
			static let resource = "EmptyDatasource"
		}
	}
	 
	
	enum Cloud {
		
		static let baseUrl = "https://baked-devel-ibm.herokuapp.com"

		enum EmployeesDBDS{
			
			static let resource = "/app/57bdfe52e6099f03000c8328/r/employeesDBDS"
			static let apiKey = "MsuLTxdQ"
		}

		enum StatusScreen1DS{
			
			static let resource = "/app/57bdfe52e6099f03000c8328/r/statusScreen1DS"
			static let apiKey = "MsuLTxdQ"
		}

		enum NewsScreen1DS{
			
			static let resource = "/app/57bdfe52e6099f03000c8328/r/newsScreen1DS"
			static let apiKey = "MsuLTxdQ"
		}
	}


}

