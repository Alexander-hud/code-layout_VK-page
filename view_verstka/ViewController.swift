//
//  ViewController.swift
//  view_verstka
//
//  Created by Александр Алешин on 22.05.2022.
//
import UIKit

class ViewController: UIViewController  {

    private lazy var perentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.parentStackViewSpacing
        return stackView
    }()
    
    private lazy var tabbatStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 40
        stackView.backgroundColor = .red
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
    
    private lazy var buttonEdit = createButton(with: Strings.textButton, titleColor: .white, background: .darkGray)
    private lazy var buddin1 = createButton(with: "История", titleColor: .red, background: .blue)
    private lazy var buddin2 = createButton(with: "Запись", titleColor: .red, background: .blue)
    private lazy var buddin3 = createButton(with: "Фото", titleColor: .red, background: .blue)
    private lazy var buddin4 = createButton(with: "Клип", titleColor: .red, background: .blue)
  

// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        buttonEdit.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
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
        tabbatStackView.addArrangedSubview(buddin1)
        tabbatStackView.addArrangedSubview(buddin2)
        tabbatStackView.addArrangedSubview(buddin3)
        tabbatStackView.addArrangedSubview(buddin4)
    }

    private func setupView() {
       view.backgroundColor = .black
    }
    
//    private func createButtonTabBar(with title: String, titleColor: UIColor, image: UIImageView) -> UIButton{
//        let button = UIButton(type: .system)
//        button.setTitle(title, for: .normal)
//        button.setTitleColor(titleColor, for: .normal)
//        button.titleLabel?.font = .systemFont(ofSize: Metric.buttonTextSize, weight: .medium)
//        button.image = image
//        button.layer.cornerRadius = Metric.buttonRadius
//
//        return button
//    }
    
    private func createButton(with title: String, titleColor: UIColor, background: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: Metric.buttonTextSize, weight: .medium)
        button.backgroundColor = background
        button.layer.cornerRadius = Metric.buttonRadius
        
        return button
    }
    
    // MARK: Create TABBARCONTROLLER
    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        
        let vc1 = FirstViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        let vc4 = FirstViewController()
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4], animated: false)
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
    
    
    private func setupLayout() {
        imageProfile.translatesAutoresizingMaskIntoConstraints = true
        imageProfile.bottomAnchor.constraint(equalTo: perentStackView.bottomAnchor, constant: 0).isActive = true
        
        perentStackView.translatesAutoresizingMaskIntoConstraints = false
        perentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.pSVLeadingAnchor).isActive = true
        perentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.pSVtrailingAnchor).isActive = true
        perentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Metric.pSVtopAnchor).isActive = true
        perentStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true
        
        tabbatStackView.translatesAutoresizingMaskIntoConstraints = false
        tabbatStackView.widthAnchor.constraint(equalToConstant: .greatestFiniteMagnitude).isActive = true
        tabbatStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        tabbatStackView.topAnchor.constraint(equalTo: buttonEdit.bottomAnchor, constant: Metric.buttonTopAnchor).isActive = true
        tabbatStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.buttonLeftAnchor).isActive = true
        tabbatStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.buttonRightAnchor).isActive = true
        
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
        static let buttonTextSize: CGFloat = 18
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

class FirstViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

    }
}
class SecondViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

    }
}
class ThirdViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
class FourthViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

    }
}


