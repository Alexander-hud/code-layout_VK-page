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

    
    private lazy var iconStakView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 25
        stackView.backgroundColor = .green
        return stackView
    }()
    
    private lazy var imageStakView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        return stackView
    }()
    
    private lazy var imageStakViewVertical: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    private lazy var labelStakView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 27
        return stackView
    }()
    
    private lazy var labelStakViewVertical: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 21
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
    
    private lazy var labelHistory: UILabel = {
        let label = UILabel()
        label.text = "История"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelEntry: UILabel = {
        let label = UILabel()
        label.text = "Запись"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelPhoto: UILabel = {
        let label = UILabel()
        label.text = "Фото"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelСlip: UILabel = {
        let label = UILabel()
        label.text = "Клип"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelQuestions: UILabel = {
        let label = UILabel()
        label.text = "Вопросы"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelSubscribers: UILabel = {
        let label = UILabel()
        label.text = "202 подписчика"
        label.textColor = .gray
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelStudies: UILabel = {
        let label = UILabel()
        label.text = "Указать место учебы"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelWork: UILabel = {
        let label = UILabel()
        label.text = "Указать место работы"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelLink: UILabel = {
        let label = UILabel()
        label.text = "Ссылка на профиль >"
        label.textColor = UIColor(red: Metric.labelStatusColorRed, green: Metric.labelStatusColorGreen, blue: Metric.labelStatusColorBlue)
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var labelInfo: UILabel = {
        let label = UILabel()
        label.text = "Подробная информация"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var iconHistory: UIImageView = {
        let imageName = "photo"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconNil: UIImageView = {
        let imageName = ""
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 0, height: 50)
        return imageView
    }()
    
    private lazy var iconNil3: UIImageView = {
        let imageName = ""
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 0, height: 50)
        return imageView
    }()
    
    private lazy var iconNil4: UIImageView = {
        let imageName = ""
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 0, height: 50)
        return imageView
    }()
    
    private lazy var iconEntry: UIImageView = {
        let imageName = "entry"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconNil2: UIImageView = {
        let imageName = ""
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 0, height: 50)
        return imageView
    }()
    
    private lazy var iconPhoto: UIImageView = {
        let imageName = "history"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconСlip: UIImageView = {
        let imageName = "clips"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconQuestions: UIImageView = {
        let imageName = "entry"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
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
    
    private lazy var iconWifi: UIImageView = {
        let imageName = "photo"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconLesson: UIImageView = {
        let imageName = "photo"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconWork: UIImageView = {
        let imageName = "photo"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconLink: UIImageView = {
        let imageName = "photo"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    
    private lazy var iconInfo: UIImageView = {
        let imageName = "photo"
        let image = UIImage(named: imageName)
        var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imageView
    }()
    

    
    private lazy var buttonEdit = createButton(with: Strings.textButton, titleColor: .white, background: .darkGray, image: "", font: Int(Metric.buttonTextSizeEdit))

    private lazy var icon1 = iconImage(name: "icon_photo")
    
// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

// MARK: - Settings
    private func someImageViewConstraints() {
        iconHistory.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconHistory.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconEntry.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconEntry.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconPhoto.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconPhoto.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconСlip.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconСlip.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconQuestions.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconQuestions.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconNil.widthAnchor.constraint(equalToConstant: 15).isActive = true
        iconNil.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconNil2.widthAnchor.constraint(equalToConstant: 5).isActive = true
        iconNil2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconNil3.widthAnchor.constraint(equalToConstant: 5).isActive = true
        iconNil3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconNil4.widthAnchor.constraint(equalToConstant: 0).isActive = true
        iconNil4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        iconWifi.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconWifi.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconLesson.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconLesson.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconWork.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconWork.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconLink.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconLink.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconInfo.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconInfo.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        }
    
    private func setupHierarchy() {
        view.addSubview(perentStackView)
        perentStackView.addArrangedSubview(imageProfile)
        perentStackView.addArrangedSubview(labelFullName)
        perentStackView.addArrangedSubview(labelStatus)
        perentStackView.addArrangedSubview(labelStatusNetwork)
        view.addSubview(buttonEdit)
        
        
        view.addSubview(labelStakView)
        labelStakView.addArrangedSubview(labelHistory)
        labelStakView.addArrangedSubview(labelEntry)
        labelStakView.addArrangedSubview(labelPhoto)
        labelStakView.addArrangedSubview(labelСlip)
        labelStakView.addArrangedSubview(labelQuestions)

        view.addSubview(imageStakView)
        imageStakView.addArrangedSubview(iconHistory)
        imageStakView.addArrangedSubview(iconNil)
        imageStakView.addArrangedSubview(iconEntry)
        imageStakView.addArrangedSubview(iconNil2)
        imageStakView.addArrangedSubview(iconPhoto)
        imageStakView.addArrangedSubview(iconNil4)
        imageStakView.addArrangedSubview(iconСlip)
        imageStakView.addArrangedSubview(iconNil3)
        imageStakView.addArrangedSubview(iconQuestions)
        
        view.addSubview(imageStakViewVertical)
        imageStakViewVertical.addArrangedSubview(iconWifi)
        imageStakViewVertical.addArrangedSubview(iconLesson)
        imageStakViewVertical.addArrangedSubview(iconWork)
        imageStakViewVertical.addArrangedSubview(iconLink)
        imageStakViewVertical.addArrangedSubview(iconInfo)
    
        view.addSubview(labelStakViewVertical)
        labelStakViewVertical.addArrangedSubview(labelSubscribers)
        labelStakViewVertical.addArrangedSubview(labelStudies)
        labelStakViewVertical.addArrangedSubview(labelWork)
        labelStakViewVertical.addArrangedSubview(labelLink)
        labelStakViewVertical.addArrangedSubview(labelInfo)
        
        someImageViewConstraints()
    }

    private func setupView() {
       view.backgroundColor = .black
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
    private func iconImage(name: String) -> UIImageView {
        let imageName: String = name
        let images = UIImageView(frame: CGRect(x: Metric.uIImageViewX, y: Metric.uIImageViewY, width: 50, height: 50))
        images.image = UIImage(named: imageName)
        images.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        return images
    }
    
    private func setupLayout() {
        imageProfile.translatesAutoresizingMaskIntoConstraints = true
        imageProfile.bottomAnchor.constraint(equalTo: perentStackView.bottomAnchor, constant: 0).isActive = true
        
        perentStackView.translatesAutoresizingMaskIntoConstraints = false
        perentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.pSVLeadingAnchor).isActive = true
        perentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        perentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Metric.pSVtopAnchor).isActive = true
        perentStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true
     
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
        
        imageStakView.translatesAutoresizingMaskIntoConstraints = false
        imageStakView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        imageStakView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        
        imageStakView.topAnchor.constraint(equalTo: buttonEdit.bottomAnchor, constant: 20).isActive = true
        imageStakView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        labelStakView.translatesAutoresizingMaskIntoConstraints = false
        labelStakView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.pSVLeadingAnchor).isActive = true
        labelStakView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        
        labelStakView.topAnchor.constraint(equalTo: imageStakView.bottomAnchor, constant: 5).isActive = true
        labelStakView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true

        imageStakViewVertical.translatesAutoresizingMaskIntoConstraints = false
        imageStakViewVertical.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        imageStakViewVertical.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        imageStakViewVertical.topAnchor.constraint(equalTo: labelStakView.bottomAnchor, constant: 20).isActive = true
        imageStakViewVertical.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -325).isActive = true
        
        labelStakViewVertical.translatesAutoresizingMaskIntoConstraints = false
        labelStakViewVertical.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.pSVLeadingAnchor).isActive = true
        labelStakViewVertical.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        
        labelStakViewVertical.leftAnchor.constraint(equalTo: imageStakViewVertical.leftAnchor, constant: 55).isActive = true
//        labelStakViewHorizontal.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true
        labelStakViewVertical.topAnchor.constraint(equalTo: labelStakView.bottomAnchor, constant: 25).isActive = true
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
