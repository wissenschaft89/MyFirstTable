//
//  SecondViewController.swift
//  ViewControllerSeuge
//
//  Created by CAUADC on 2017. 2. 7..
//  Copyright © 2017년 CAUADC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //ViewController가 화면에 나타나기 직전에 호출되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("ViewController가 생성되었습니다. viewWillAppear")
    }
    
    
    // ViewController 가 화면에 나타나기 직전에 호출되는 함수
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("ViewController가 화면에 나타난 직후입니다 viewDidAppear")
    }
    // ViewController가 화면에서 사라지기 직전에 호출되는 함수
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        print("ViewController가 화면에서 사라지기 직전입니다 viewWillDisappear")
    }
    
    
    
    // ViewController가 화면에서 사라진 직후에 호출되는 함수
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController가 화면에서 사라진 직후입니다 viewDidDisappear")
    }

    
    
    
    // 스토리보드의 segue를 통해 화면이 전환될때 호출될 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let next = segue.destination
        
        if let SecondViewController = next as? SecondViewController {
            print("목적지는 secondViewController 입니다")
        } else {
            //목적지가 SecondViewController가 아니라면
            print("목적지는 SecondViewController가 아닙니다")
        }
        
        
        
        
    }

}

