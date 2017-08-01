//
//  MainViewController.swift
//  MVC
//
//  Created by jaeseong on 2017. 7. 31..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    private var personStruct:Person = Person()
    
    //***************************************************************
    // Outlet 변수
    //***************************************************************
    
    @IBOutlet private var name:UITextField!
    @IBOutlet private var age:UITextField!
    
    //***************************************************************
    // Outlet 액션
    //***************************************************************
    
    @IBAction func submit(_ sender:UIButton) {
        
        personStruct.name = self.name.text
        personStruct.age = self.age.text
        
        Data.shared.personArray.append(personStruct)
        
        print(personStruct)
        
        //***************************************************************
        // Alert Controller 생성
        //***************************************************************
        
        let title = "알림"
        let message = "이름과 나이를 입력합니다"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //***************************************************************
        // alert action 추가
        //***************************************************************
    
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            guard let next = self.storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController else {
                return
            }
            self.navigationController?.pushViewController(next, animated: true)
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        //***************************************************************
        // action add
        //***************************************************************
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
     

        //***************************************************************
        // Alert 에 closure 미 사용시 navigation controller 화면 전환
        //***************************************************************
        
//        guard let next = self.storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController else {
//            return
//        }
//        
//        self.navigationController?.pushViewController(next, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //***************************************************************
        // 텍스트 필드
        //***************************************************************
        
        self.name.placeholder = "이름을 입력"
        self.age.placeholder = "나이를 입력"
        self.name.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //***************************************************************
        //텍스트 필드 초기화
        //***************************************************************
        
        self.name.text = ""
        self.age.text = ""
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
