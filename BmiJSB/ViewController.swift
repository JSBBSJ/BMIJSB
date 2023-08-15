//
//  ViewController.swift
//  BmiJSB
//
//  Created by 소프트웨어컴퓨터 on 2022/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sc(_ sender: UISegmentedControl) {
        if sender .selectedSegmentIndex == 0{
            print("남성")
        }else{
            print("여성")
        }
    }
    
    @IBAction func swOnOff(_ sender: UISwitch) {
        if sender.isOn{
            print("남성")
        }else{
            print("여성")
        }
        
    }
    @IBAction func bmi(_ sender: UIButton) {
        if txtWeight.text == "" || txtHeight.text == "" {
            lblResult.textColor = UIColor.red
            lblResult.text = "키와 몸무게를 입력하세요 !! "
            return
        }else{
            let weight = Double(txtWeight.text!)!
            let height = Double(txtHeight.text!)!
            let bmi = weight / (height*height*0.0001) // kg/m*m
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.white
            if bmi >= 40 {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "3단계 비만"
            } else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "2단계 비만"
            } else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "1단계 비만"
            } else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                body = "정상"
            } else {
                color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                body = "저체중"
            }
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 10
            lblResult.backgroundColor = color
            lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
        }
    }
    
}

