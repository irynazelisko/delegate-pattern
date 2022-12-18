//
//  SecondViewController.swift
//  delegate
//
//  Created by Ірина Зеліско on 19.12.2022.
//

import UIKit
protocol PassDataDelegate {
    func passData(text: String)
}

class SecondViewController: UIViewController {
    var data = ""
    var delegate: PassDataDelegate!

    @IBOutlet weak var newTextName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        newTextName.text = data
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        delegate.passData(text: newTextName.text!)
        
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
