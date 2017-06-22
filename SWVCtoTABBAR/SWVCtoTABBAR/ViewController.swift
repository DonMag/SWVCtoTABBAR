//
//  ViewController.swift
//  SWVCtoTABBAR
//
//  Created by Don Mag on 6/22/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit


class ViewControllerEntry: UIViewController, UITextFieldDelegate {
	
	
	//    var arrayOfStrings: [String] = ["We", "â¤", "Swift"]
	
	var loginArray: [String] = ["Peter", "Peter Weyand", "Weyand", "platypus", "patientplatypus"]
	
	
	@IBOutlet weak var NameLabel: UILabel!
	@IBOutlet weak var NameText: UITextField!
	
	
	@IBAction func NameTextEdit(_ sender: UITextField) {
		
		NameLabel.text = NameText.text
		
	}
	
	@IBAction func LoginButton(_ sender: Any) {
		for i in 0..<loginArray.count {
			if loginArray[i]==NameLabel.text{
				
				let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
				
				if 1 == 2 {
					
					// load ViewControllers and add them to a programmatically created UITabBarController
				
					let vc1 = storyBoard.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
					let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
					let vc3 = storyBoard.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
					
					vc1.stringPassed = NameLabel.text!
					
					let tabBarVC = UITabBarController()
					tabBarVC.setViewControllers([vc1, vc2, vc3], animated: false)
					
					let appDelegate = UIApplication.shared.delegate as! AppDelegate
					appDelegate.window?.rootViewController = tabBarVC
					
				} else {
					
					// load a Storyboard created UITabBarController
					
					let tabBarVC = storyBoard.instantiateViewController(withIdentifier: "SBTabBar") as! UITabBarController
					
					if let vc1 = tabBarVC.viewControllers?.first as? ViewController1 {
						vc1.stringPassed = NameLabel.text!
					}
					
					let appDelegate = UIApplication.shared.delegate as! AppDelegate
					appDelegate.window?.rootViewController = tabBarVC
					
				}
				
			}
		}
	}
	
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		NameText.returnKeyType = UIReturnKeyType.done
		NameText.delegate = self
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}





class ViewController1: UIViewController {
	
	@IBOutlet weak var UserName: UILabel!
	var stringPassed = ""
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated) // No need for semicolon
		UserName.text = stringPassed
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}



class ViewController2: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}




class ViewController3: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}


