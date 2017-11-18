//
//  PuppyViewController.swift
//  PuppyAnimation
//
//  Created by Mary Niederschmidt on 11/11/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

class PuppyViewController: UIViewController {
    
    let firstImage: UIImage = UIImage.init(named: "puppyA.jpg")!
    let secondImage: UIImage = UIImage.init(named: "puppyB.jpg")!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let firstImageView = UIImageView.init(image: firstImage)
        firstImageView.frame = view.frame
        view.addSubview(firstImageView)
        
        let secondImageView = UIImageView.init(image: secondImage)
        secondImageView.frame = view.frame
        secondImageView.alpha = 0.0
        view.addSubview(secondImageView)
        
        UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseOut], animations: {
            secondImageView.alpha = 1
            firstImageView.alpha = 0
        }, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
