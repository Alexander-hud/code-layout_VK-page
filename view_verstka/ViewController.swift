//
//  ViewController.swift
//  view_verstka
//
//  Created by Александр Алешин on 22.05.2022.
//
import UIKit
import SwiftUI


class ViewController: UIViewController  {

    private lazy var perentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.parentStackViewSpacing
        return stackView
    }()
    
    private lazy var tabbatStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.layoutMargins = UIEdgeInsets(top: 200, left: 0, bottom: 2, right: 0)
        stackView.spacing = 40
        stackView.backgroundColor = .red
        
        return stackView
    }()
    

    
    private lazy var buttonStakView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.backgroundColor = .green
        return stackView
    }()
    
    private lazy var imageProfile: UIImageView = {
        var image = UIImageView(frame: CGRect(x: Metric.uIImageViewX, y: Metric.uIImageViewY, width: Metric.uIImageViewWidth, height: Metric.uIImageViewHeight))
        image.image = UIImage(named: Strings.nameImage)
        image.layer.borderWidth = Metric.imageBorderWidth
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
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: Metric.lavelStatus)
        return label
    }()
    
    private lazy var labelStatusNetwork: UILabel = {
        let label = UILabel()
        label.text = Strings.statusNetwork
        label.textColor = UIColor(red: Metric.labelStatusNColorRed, green: Metric.labelStatusNColorGreen, blue: Metric.labelStatusNColorBlue)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: Metric.lavelStatus)
        return label
    }()
    

    
    private lazy var buttonEdit = createButton(with: Strings.textButton, titleColor: .white, background: .darkGray, image: "", font: Int(Metric.buttonTextSizeEdit))
    
    private lazy var buttonHistory = createButton(with: "История", titleColor: UIColor(red: Metric.labelStatusNColorRed, green: Metric.labelStatusNColorGreen, blue: Metric.labelStatusNColorBlue), background: .blue, image: "", font: Int(Metric.buttonTextSizeMenu))
    private lazy var buttonRecord = createButton(with: "Запись", titleColor: UIColor(red: Metric.labelStatusNColorRed, green: Metric.labelStatusNColorGreen, blue: Metric.labelStatusNColorBlue), background: .blue, image: "", font: Int(Metric.buttonTextSizeMenu))
    private lazy var buttonPhote = createButton(with: "Фото", titleColor: UIColor(red: Metric.labelStatusNColorRed, green: Metric.labelStatusNColorGreen, blue: Metric.labelStatusNColorBlue), background: .blue, image: "", font: Int(Metric.buttonTextSizeMenu))
    private lazy var buttonClip = createButton(with: "Клип", titleColor: UIColor(red: Metric.labelStatusNColorRed, green: Metric.labelStatusNColorGreen, blue: Metric.labelStatusNColorBlue), background: .blue, image: "", font: Int(Metric.buttonTextSizeMenu))
    
    private lazy var buttonHistorys = imageIcons(with: "icon_photo")
    
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
        view.addSubview(tabbatStackView)
//        tabbatStackView.addArrangedSubview(buttonHistory)
        tabbatStackView.addArrangedSubview(buttonRecord)
        tabbatStackView.addArrangedSubview(buttonPhote)
        tabbatStackView.addArrangedSubview(buttonClip)
        tabbatStackView.addArrangedSubview(buttonStakView)
        
//        view.addSubview(buttonHistorys)// сюда нужно создать иконку и поместить
        buttonStakView.addArrangedSubview(buttonHistorys)
        buttonStakView.addArrangedSubview(buttonHistory)
//        buttonStakView.addArrangedSubview(buttonRecord)
//        buttonStakView.addArrangedSubview(buttonPhote)
//        buttonStakView.addArrangedSubview(buttonClip)
    }

    private func setupView() {
       view.backgroundColor = .black
    }
    
    
    private func imageIcons(with image: String) -> UIImageView {
        let imageHistory = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        let name: String = image
        imageHistory.image = UIImage(named: name)
        imageHistory.layer.borderWidth = Metric.imageBorderWidth
        imageHistory.layer.masksToBounds = false
        imageHistory.layer.borderColor = UIColor.black.cgColor
        imageHistory.layer.cornerRadius = imageHistory.frame.height/2
        imageHistory.clipsToBounds = true
        
        return imageHistory
    }
    
    private func createButton(with title: String, titleColor: UIColor, background: UIColor, image: String, font: Int) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        let size: Int = font
        button.titleLabel?.font = .systemFont(ofSize: CGFloat(size), weight: .medium)
        button.backgroundColor = background
        button.layer.cornerRadius = Metric.buttonRadius
        let namedIcon: String = image
        button.setImage(UIImage(named: namedIcon), for: .normal)
        return button
    }
    
    private func setupLayout() {
        imageProfile.translatesAutoresizingMaskIntoConstraints = true
        imageProfile.bottomAnchor.constraint(equalTo: perentStackView.bottomAnchor, constant: 0).isActive = true
        
        perentStackView.translatesAutoresizingMaskIntoConstraints = false
        perentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.pSVLeadingAnchor).isActive = true
        perentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        perentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Metric.pSVtopAnchor).isActive = true
        perentStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true
        //
        tabbatStackView.translatesAutoresizingMaskIntoConstraints = false
        
//        tabbatStackView.widthAnchor.constraint(equalToConstant: .greatestFiniteMagnitude).isActive = true
        
        tabbatStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18).isActive = true

        tabbatStackView.topAnchor.constraint(equalTo: buttonEdit.bottomAnchor, constant: Metric.buttonTopAnchor).isActive = true

        tabbatStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18).isActive = true
        
//        tabbatStackView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 100)
//            .isActive = true
        
        //
        labelFullName.topAnchor.constraint(equalTo: perentStackView.topAnchor, constant: Metric.labelTopAnchor).isActive = true
        labelFullName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.labelTopAnchor).isActive = true
        labelFullName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.labelLeftAnchor).isActive = true
        labelFullName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.labelTrailingAnchor).isActive = true
        
        labelStatus.topAnchor.constraint(equalTo: labelFullName.bottomAnchor, constant: Metric.labelTopAnchor).isActive = true
        labelStatus.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.labelTrailingAnchor).isActive = true
        labelStatus.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.labelLeftAnchor).isActive = true
       
        labelStatusNetwork.topAnchor.constraint(equalTo: labelStatus.bottomAnchor, constant: Metric.labelTopAnchor).isActive = true
        labelStatusNetwork.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.labelTrailingAnchor).isActive = true
        labelStatusNetwork.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.labelLeftAnchor).isActive = true
        
        buttonEdit.translatesAutoresizingMaskIntoConstraints = false
        buttonEdit.widthAnchor.constraint(equalToConstant: .greatestFiniteMagnitude).isActive = true
        buttonEdit.topAnchor.constraint(equalTo: labelStatusNetwork.bottomAnchor, constant: Metric.buttonTopAnchor).isActive = true
        buttonEdit.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.buttonLeftAnchor).isActive = true
        buttonEdit.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true
        

    }

}

// MARK: - Constants

extension ViewController {

    enum Metric {
        static let lavelStatus: CGFloat = 14
        static let labelFullNameSize: CGFloat = 18
        static let parentStackViewSpacing: CGFloat = 30
        static let buttonTextSizeEdit: CGFloat = 18
        static let buttonTextSizeMenu: CGFloat = 16
        static let uIImageViewWidth: CGFloat = 80
        static let uIImageViewHeight: CGFloat = 80
        static let imageBorderWidth: CGFloat = 1
        static let uIImageViewX: CGFloat = 0
        static let uIImageViewY: CGFloat = 0
        static let labelStatusColorRed: Int = 131
        static let labelStatusColorGreen: Int = 168
        static let labelStatusColorBlue: Int = 229
        static let labelStatusNColorRed: Int = 122
        static let labelStatusNColorGreen: Int = 122
        static let labelStatusNColorBlue: Int = 124
        static let buttonRadius: CGFloat = 10
        static let pSVLeadingAnchor: CGFloat = 18
        static let pSVtrailingAnchor: CGFloat = -18
        static let pSVtopAnchor: CGFloat = 5
        static let labelTopAnchor: CGFloat = 6
        static let labelTrailingAnchor: CGFloat = -36
        static let labelLeftAnchor: CGFloat = 115
        static let buttonLeftAnchor: CGFloat = 18
        static let buttonRightAnchor: CGFloat = -18
        static let buttonTopAnchor: CGFloat = 15
    }

    enum Strings {
        static let profileName = "Александр Алёшин"
        static let status = "Установить статус"
        static let statusNetwork = "online"
        static let textButton = "Редактировать"
        static let nameImage = "profile"

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


extension UIStackView {
func horizontalAxisStack() {
        axis = .horizontal
        spacing = 20
        layer.cornerRadius = 10
        distribution = .fillEqually
        layoutMargins = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        isLayoutMarginsRelativeArrangement = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
