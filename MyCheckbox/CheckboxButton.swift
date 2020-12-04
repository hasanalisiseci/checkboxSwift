//
//  CheckboxButton.swift
//  MyCheckbox
//
//  Created by Hasan Ali Şişeci on 4.12.2020.
//

import UIKit

class CheckboxButton: UIView {
    
    var isChecked : Bool = false
    
    //İkonumuzu oluşturalım
    let imageView: UIImageView = {
        let imageView = UIImageView()
        //Uygulama açıldığında tikin görünmemesi için isHidden'a true atıyoruz.
        imageView.isHidden = true
        imageView.contentMode = .scaleAspectFit
        //Renk olarak estetik durması açısından sistem background'unu atadık.
        imageView.tintColor = .systemBackground
        //imageView'ımızda kullanacağımız resmi ikon kütüphanesinden çağırıyoruz.
        imageView.image = UIImage(systemName: "checkmark")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //Buttonumuzu arkaplan rengi atadık
        backgroundColor = .systemRed
        //Daha estetik bir görüntü için kenarları ayarlayalım.
        layer.cornerRadius = 5
        //Görünüme imageView'ımızı yani ikonumuzu ekliyoruz.
        addSubview(imageView)
        //Taşan kısımları göstermemesi için clipstobounds'a true atıyoruz
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.width)
    }
    
    public func toggle() {
        self.isChecked = !isChecked
        imageView.isHidden = !isChecked
        
    }
    
    
}
