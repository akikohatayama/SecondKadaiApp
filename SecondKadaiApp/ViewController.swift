//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by akikohatayama on 2016/02/18.
//  Copyright © 2016年 AkikoHatayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //入力欄
    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //キーボードをしまう
        self.inputName.delegate = self
        //完了ボタン表示
        inputName.returnKeyType = UIReturnKeyType.Done;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        
        resultViewController.outputName = inputName.text!
        
    }
    
    //キーボードをしまう
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        inputName.text = ""
    }

}

