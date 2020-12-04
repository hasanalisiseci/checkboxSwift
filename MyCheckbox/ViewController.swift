//
//  ViewController.swift
//  MyCheckbox
//
//  Created by Hasan Ali Şişeci on 4.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    //Checkbox nesnelerimizi yaratalım.
    let checkboxCircle = CircularCheckbox(frame: CGRect(x: 40, y: 120, width: 40, height: 40))
    
    let checkboxButton = CheckboxButton(frame: CGRect(x: 42.5, y: 180, width: 35, height: 35))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Ardından labellarımızı yaratalım .
        let label1 = UILabel(frame: CGRect(x: 90, y: 120, width: 250, height: 40))
        label1.text = "I agree to your terms of service"
        
        let label2 = UILabel(frame: CGRect(x: 90, y: 180, width: 250, height: 40))
        label2.text = "I agree to your terms of service"
        
        //Label ve checkbox'ları view'ımıza ekleyelim.
        view.addSubview(label1)
        view.addSubview(checkboxCircle)
        
        view.addSubview(label2)
        view.addSubview(checkboxButton)
        
        //Sonrasında checkbox'larımıza dokunma özelliğini ve dokunduğumuzda ne
        //olacağını belirleyen gesture recognizer'larını tanımlayalım
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckbox))
        checkboxCircle.addGestureRecognizer(gesture)
        
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(didTapCheckboxButton))
        checkboxButton.addGestureRecognizer(gesture2)
      
    }
    
    //Gesture recognizer fonksiyonlarımız. Nesnelerin kendi sınıflarındaki
    //metodları çağırıyor
    @objc func didTapCheckbox(){
        checkboxCircle.toggle()
    }

    @objc func didTapCheckboxButton(){
        checkboxButton.toggle()
    }
}

