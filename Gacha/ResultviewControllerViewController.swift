//
//  ResultviewControllerViewController.swift
//  Gacha
//
//  Created by Zentaro Imai on 2021/05/10.
//

import UIKit

class ResultviewControllerViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var monsterName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageView.image = UIImage(named: "meg")
            backgroundImageView.image = UIImage(named: "goldbackground")
            monsterName.text = String("Meg Griffin")
        }else if number > 5{
            monsterImageView.image = UIImage(named: "peter")
            backgroundImageView.image = UIImage(named: "redbackground")
            monsterName.text = String("Peter Griffin")
        }else{
            monsterImageView.image = UIImage(named: "chris")
            backgroundImageView.image = UIImage(named: "bluebackground")
            monsterName.text = String("Chris Griffin")
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
