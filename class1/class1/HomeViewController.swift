//
//  HomeViewController.swift
//  class1
//
//  Created by Zibal Macbook 5 on 21/01/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var box: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        redButton.backgroundColor = .red
        greenButton.backgroundColor = .green
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }

    override func viewWillDisappear(_ animated: Bool) {
        
    }
   
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    
    
    @IBAction func redButtonPressed(_ sender: UIButton) {
        
        if box.backgroundColor == .red {
            showError()
        } else{
            askForConfirmation(color: .red)
        }
    }
    
    
    @IBAction func greenButtonPressed(_ sender: UIButton) {
        
        if box.backgroundColor == .green {
            showError()
        } else  {
            askForConfirmation(color: .green)
        }
        
    }
    
    
    func showError() {
        let alert = UIAlertController(title: "Error!!", message: "Color is already changed!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        newFunc(text:"ds")
    }
    
    func askForConfirmation(color: UIColor) {
        let alert = UIAlertController(title: "Are you sure?", message: "You want to change color?", preferredStyle: .alert)
        let yesAction = UIAlertAction(title: "Yes", style: .default, handler: { action in
            self.box.backgroundColor = color
        })
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: { action in
            
        })
        alert.addAction(yesAction)
        alert.addAction(noAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func newFunc(text: String) {
        print(text)
    }

}
