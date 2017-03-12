//
//  ViewController.swift
//  calculator
//
//  Created by 上海海洋大学 on 17/3/12.
//  Copyright © 2017年 上海海洋大学. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var interestRateField: UITextField!

    @IBOutlet weak var loanTermField: UITextField!
    @IBOutlet weak var loanAmountField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } 
    @IBAction func calculateField(_ sender: Any) {
        let calculate1 = simpleCalculate()
        result.text = calculate1.calculate(loanAmount: Double(loanAmountField.text!)!, years:Int(loanTermField.text!)!, interestRate: Double(interestRateField.text!)!).description
        let ac = UIAlertController(title: "提示", message: "计算完成", preferredStyle: .alert)
        let btn = UIAlertAction(title: "ok", style: .default, handler: nil)
        ac.addAction(btn)
        self.present(ac, animated: true, completion: nil)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class simpleCalculate  {
    func calculate(loanAmount:Double,years:Int,interestRate:Double)
    ->Double{
    let rate = interestRate / 100
        let interest = loanAmount * rate * Double(years)
        return loanAmount * interest
    }
}
