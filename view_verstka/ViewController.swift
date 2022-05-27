//
//  ViewController.swift
//  view_verstka
//
//  Created by Александр Алешин on 22.05.2022.
//
/*
 1 создать пространство вью
 */
import UIKit

class ViewController: UIViewController  {

    private lazy var perentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.parentStackViewSpacing
        return stackView
    }()
    
    private lazy var imageProfile: UIImageView = {
        var image = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        image.image = UIImage(named: "profile")
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        return image
    }()

    private lazy var labelFullName: UILabel = {
        let label = UILabel()
        label.text = Strings.profileName
        label.textColor = .white
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: Metric.labelFullNameSize)
        return label
    }()
    
    private lazy var labelStatus: UILabel = {
        let label = UILabel()
        label.text = Strings.status
        label.textColor = UIColor(red: 131, green: 168, blue: 229)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: Metric.lavelStatus)
        return label
    }()
    
    private lazy var labelStatusNetwork: UILabel = {
        let label = UILabel()
        label.text = Strings.statusNetwork
        label.textColor = UIColor(red: 122, green: 122, blue: 124)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: Metric.lavelStatus)
        return label
    }()
    
    private lazy var buttonEdit = createButton(with: Strings.textButton, titleColor: .white, background: .darkGray)
  

// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

// MARK: - Settings
    private func setupHierarchy() {
        view.addSubview(perentStackView)
        perentStackView.addArrangedSubview(imageProfile)
        perentStackView.addArrangedSubview(labelFullName)
        perentStackView.addArrangedSubview(labelStatus)
        perentStackView.addArrangedSubview(labelStatusNetwork)
        view.addSubview(buttonEdit)
    }

    private func setupView() {
       view.backgroundColor = .black
    }
    
    private func createButton(with title: String, titleColor: UIColor, background: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: Metric.buttonTextSize, weight: .medium)
        button.backgroundColor = background
        button.layer.cornerRadius = 10
        
        return button
    }
    
    private func setupLayout() {
        imageProfile.translatesAutoresizingMaskIntoConstraints = true
        imageProfile.bottomAnchor.constraint(equalTo: perentStackView.bottomAnchor, constant: 0).isActive = true
        
        perentStackView.translatesAutoresizingMaskIntoConstraints = false
        perentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true
        perentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18).isActive = true
        perentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        
        labelFullName.topAnchor.constraint(equalTo: perentStackView.topAnchor, constant: 6).isActive = true
        
        labelFullName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36).isActive = true
        labelFullName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115).isActive = true
        
        labelStatus.topAnchor.constraint(equalTo: labelFullName.bottomAnchor, constant: 6).isActive = true
        labelStatus.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36).isActive = true
        labelStatus.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115).isActive = true
       
        labelStatusNetwork.topAnchor.constraint(equalTo: labelStatus.bottomAnchor, constant: 6).isActive = true
        labelStatusNetwork.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36).isActive = true
        labelStatusNetwork.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115).isActive = true
        
        buttonEdit.translatesAutoresizingMaskIntoConstraints = false
        buttonEdit.widthAnchor.constraint(equalToConstant: .greatestFiniteMagnitude).isActive = true
        buttonEdit.topAnchor.constraint(equalTo: labelStatusNetwork.bottomAnchor, constant: 6).isActive = true
        buttonEdit.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 18).isActive = true
        buttonEdit.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -18).isActive = true
        
        
    }

}

// MARK: - Constants

extension ViewController {

    enum Metric {
        static let lavelStatus: CGFloat = 14
        static let labelFullNameSize: CGFloat = 18
        static let parentStackViewSpacing: CGFloat = 30
        static let buttonTextSize: CGFloat = 18
    }

    enum Strings {
        static let profileName = "Александр Алёшин"
        static let status = "Установить статус"
        static let statusNetwork = "online"
        static let textButton = "Редактировать"

    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
