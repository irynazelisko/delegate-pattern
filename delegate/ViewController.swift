//
//  ViewController.swift
//  delegate
//
//  Created by Ірина Зеліско on 19.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clickPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            //pass data between view controllers
            if let name = textName.text {
                destinationVC.data = name
            }
            destinationVC.delegate = self
        }
        
    }
}
extension ViewController: PassDataDelegate {
    func passData(text: String) {
        textName.text = text
    }
}

