//
//  PopUpViewController.swift
//
//
//  Created by Sagar r on 3/02/21.
//  Copyright © 2021 Sagar r. All rights reserved.
//

import UIKit

protocol CustomAlertViewDelegate: class {
    func okButtonTapped()
    func cancelButtonTapped()
}

class RemoveFriendPopUpViewController: UIViewController {
    
    @IBOutlet weak var lbl_headingName: UILabel!
    @IBOutlet weak var lbl_mainMsg: UILabel!
    @IBOutlet weak var lbl_subMessage: UILabel!
    
    @IBOutlet weak var cancelBTN: UIButton!
    
    @IBOutlet weak var createBTN: UIButton!
    
    
    var delegate: CustomAlertViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func act_Cancel(_ sender: Any) {
        

        delegate?.cancelButtonTapped()
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func act_create(_ sender: Any) {
      
       
        
        delegate?.okButtonTapped()
        self.dismiss(animated: true, completion: nil)
        
    }
    
     
    
}



////use custom alert

//put this below code where you want to show alert on yourcontroller
let customAlert = RemoveFriendPopUpViewController.init(nibName: "RemoveFriendPopUpViewController", bundle: nil)
        customAlert.providesPresentationContextTransitionStyle = true
        customAlert.definesPresentationContext = true
        customAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        customAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        customAlert.delegate = self
        self.present(customAlert, animated: true, completion: nil)




//just extend the view controller

extension "yourcontrollerName": CustomAlertViewDelegate {
   
    func okButtonTapped() {
        
        print("okButtonTapped")
        
    }
    
    func cancelButtonTapped() {
        print("cancelButtonTapped")
        
    }
}
