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
        label.textColor = .blue
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: Metric.lavelStatus)
        return label
    }()

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
    }

    private func setupView() {
       view.backgroundColor = .black
    }
    private func setupLayout() {
        perentStackView.translatesAutoresizingMaskIntoConstraints = false
        perentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true
        perentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18).isActive = true
        perentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        
        labelFullName.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        labelFullName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18).isActive = true
        labelFullName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115).isActive = true
        
        
//        labelStatus.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
//        labelStatus.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18).isActive = true
//        labelStatus.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115).isActive = true
       
        
        
        
        imageProfile.translatesAutoresizingMaskIntoConstraints = true
//        imageProfile.center = CGPoint(x: 100, y: 150)
//        imageProfile.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageProfile.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
    }

}

// MARK: - Constants

extension ViewController {

    enum Metric {
        static let lavelStatus: CGFloat = 14
        static let labelFullNameSize: CGFloat = 18
        static let parentStackViewSpacing: CGFloat = 30
    }

    enum Strings {
        static let profileName = "Александр Алёшин"
        static let status = "Установить статус"
        static let statusNetwork = "online"

    }
}
// MARK: - START
//class ViewController: UIViewController {
//
//    private lazy var resultLabel: UILabel = {
//        let label = UILabel()
//
//        label.text = "Александр Алешин"
//        label.font = .systemFont(ofSize: Metric.resultFontSize, weight: .light)
//        label.textColor = .white
//        label.textAlignment = .center
//
//        return label
//    }()
//
//    private lazy var perentStackView: UIStackView = {
//       let stackView = UIStackView()
//        stackView.axis =  .vertical
//        stackView.spacing = Metric.parentStackViewSpacing
//
//        return stackView
//    }()
//
//    private lazy var buttonsStackView: UIStackView = {
//       let stackView = UIStackView()
//        stackView.axis =  .vertical
//        stackView.spacing = Metric.buttonsStackViewSpacing
//        stackView.distribution = .fillEqually
//        return stackView
//    }()
//
//
//
//    private lazy var clearButton = createButton(with: "AC", titleColor: .black , backgroundColor: .lightGray)
//    private lazy var plusMinusButton = createButton(with: "+/-", titleColor: .black , backgroundColor: .lightGray)
//    private lazy var pertsentButton = createButton(with: "%", titleColor: .black , backgroundColor: .lightGray)
//    private lazy var divisionButton = createButton(with: "/", titleColor: .white , backgroundColor: .systemOrange)
//    private lazy var firstStackView = createHorizontalStackView()
//
//    private lazy var sevenButton = createButton(with: "7", titleColor: .white , backgroundColor: .darkGray)
//    private lazy var eightButton = createButton(with: "8", titleColor: .white , backgroundColor: .darkGray)
//    private lazy var nineButton = createButton(with: "9", titleColor: .white , backgroundColor: .darkGray)
//    private lazy var multiplayButton = createButton(with: "x", titleColor: .white , backgroundColor: .systemOrange)
//    private lazy var secondStackView = createHorizontalStackView()
//
//    private lazy var freeStackView = createHorizontalStackView()
//
//
//    // MARK: - Lifecycle
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // вызываем весь наш код перед щагрузкой вьюхи
//        setupHierarchy()
//        setupLayout()
//        setupView()
//
//    }
//
//    // MARK: - Settings
//
//    private func setupHierarchy() {
//        view.addSubview(perentStackView)
//        // добавляем в view сам label and button
//
//        perentStackView.addArrangedSubview(resultLabel)
//        perentStackView.addArrangedSubview(buttonsStackView)
//
//        buttonsStackView.addArrangedSubview(firstStackView)
//
//        firstStackView.addArrangedSubview(clearButton)
//        firstStackView.addArrangedSubview(plusMinusButton)
//        firstStackView.addArrangedSubview(pertsentButton)
//        firstStackView.addArrangedSubview(divisionButton)
//
//        buttonsStackView.addArrangedSubview(secondStackView)
//
//        secondStackView.addArrangedSubview(sevenButton)
//        secondStackView.addArrangedSubview(eightButton)
//        secondStackView.addArrangedSubview(nineButton)
//        secondStackView.addArrangedSubview(multiplayButton)
//
//    }
//
//    private func setupLayout() {
//        // параметры label 0
//        perentStackView.translatesAutoresizingMaskIntoConstraints = false
//        perentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.leftOffset).isActive = true
//        perentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.rightOffset).isActive = true
//        perentStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.bottomOffset).isActive = true
//        firstStackView.heightAnchor.constraint(equalToConstant: Metric.buttonHeight).isActive = true
//
//    }
//
//    private func setupView() {
//        // фон
//        view.backgroundColor = .black
//    }
//
//    // MARK: - Private functions
//
//    // создание кнопок
//    private func createButton(with title: String, titleColor: UIColor, backgroundColor: UIColor) -> UIButton {
//        let button = UIButton(type: .system)
//
//        button.setTitle(title, for: .normal)
//        button.setTitleColor(titleColor, for: .normal)
//        button.titleLabel?.font = .systemFont(ofSize: Metric.resultFontSize, weight: .medium)
//        button.backgroundColor = backgroundColor
//
//        button.layer.masksToBounds = true
//        button.layer.cornerRadius = Metric.buttonHeight / 2
//
//        button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: 1).isActive = true
//
//        return button
//    }
//
//    private func createHorizontalStackView() -> UIStackView {
//        let stackView = UIStackView()
//
//        stackView.axis = .horizontal
//        stackView.distribution = .equalSpacing
//
//        return stackView
//    }
//}
//// MARK: - Constants
//
//extension ViewController {
//    // зашитые в класс новые параметры кнопки
//    enum Metric {
//        static let buttonHeight: CGFloat = 75
//
//        static let parentStackViewSpacing: CGFloat = 30
//        static let buttonsStackViewSpacing: CGFloat = 15
//        static let resultFontSize: CGFloat = 14
//        static let buttonFontSize: CGFloat = 30
//
//        static let leftOffset: CGFloat = 18
//        static let rightOffset: CGFloat = -18
//        static let bottomOffset: CGFloat = -50
//
//    }
//
//    enum Strings {
//
//    }
//}
//// MARK: - END
