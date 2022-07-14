//
//  ViewController.swift
//  SuperSenha
//
//  Created by Thiago Silva on 13/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!){
            passwordViewController.numberOfCharacters = numberOfCharacters
            
        }
        
        passwordViewController.useLetters = swLetters.isOn
        passwordViewController.useNumbers = swNumbers.isOn
        passwordViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordViewController.useSpecialCharacters = swSpecialCharacters.isOn
        view.endEditing(true)

    }
    
}

