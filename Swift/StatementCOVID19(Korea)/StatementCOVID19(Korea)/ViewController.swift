//
//  ViewController.swift
//  StatementCOVID19(Korea)
//
//  Created by Sarah Jeong on 2022/11/16.
//

import UIKit
import Charts
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var totalCaseLable: UILabel!
    @IBOutlet weak var newCaseLabel: UILabel!
    
    @IBOutlet weak var picChartView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func fetchCovidOverview(
        completionHandler: (Result<CityCovidOverView, Error>) -> Void ) {
            
            let url = "https://api.corona-19.kr/korea/country/new/"
            let param = [
            "serviceKey" : "iC61TZg7HvQwkxKVh35rDao8XJljpysfn"
            ]
        
            // Call API with Alamofire
            // Call API with request
            AF.request(url, method: .get, parameters: param)
            
            // Method for responding data
                .responseData(completionHandler: response in
                              // 열거형
                switch response.result {
                case let .success(data) :
                    do {
                        
                    }
                    <#code#>
                default:
                    <#code#>
                })

            
            
    }
}

