////
////  PetDetailView.swift
////  PetVet
////
////  Created by Vladimir Beliakov on 18.01.2023.
////
//
//import UIKit
////import SnapKit
//
//class PetDetailView: UIView {
//
//    private let scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.969, alpha: 1)
//        return scrollView
//    }()
//
//     private let petPortrait: UIImageView = {
//        let image = UIImageView()
//        image.clipsToBounds = true
//        image.layer.cornerRadius = 96 / 2
//        image.image = UIImage(named: "Cockatiel")
//        image.layer.borderWidth = 3
//        image.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5).cgColor
//        return image
//    }()
//
//    private let petPortraitPickButton: UIButton = {
//        let button = UIButton()
//        return button
//    }()
//
//    private let petName: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.textColor = UIColor(red: 0.106, green: 0.137, blue: 0.188, alpha: 1)
//        label.font = Fonts.openSansBold(size: 20)
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.text = "Инокентий"
//        return label
//    }()
//
//    private let petRegistrationDate: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        label.font = Fonts.proximaNovaRegular(size: 14)
//        label.text = "Добавлен 08.10.2022"
//        return label
//    }()
//
//    private let vetCardButton: CustomEnterButton = {
//        let button = CustomEnterButton(color: .green, type: .normal)
//        button.titleLabel?.font = Fonts.proximaNovaSemibold(size: 18)
//        button.setTitle("Ветеринарная карта", for: .normal)
//        return button
//    }()
//
//    private let breedBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let breed: UILabel = {
//        let label = UILabel()
//        label.text = "Порода"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let breedInput: UILabel = {
//        let label = UILabel()
//        label.text = "Корелла"
//        label.font = Fonts.openSansRegular(size: 16)
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        return label
//    }()
//
//    private let specialSignsBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let specialSign: UILabel = {
//        let label = UILabel()
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.text = "Особые приметы"
//        label.font = Fonts.openSansBold(size: 14)
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let specialSignInput: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.text = "Замечательная корелла, лучше всех"
//        label.font = Fonts.openSansRegular(size: 16)
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        return label
//    }()
//
//    private let paintBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let paint: UILabel = {
//        let label = UILabel()
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.text = "Окрас"
//        label.font = Fonts.openSansBold(size: 14)
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let paintInput: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.text = "Серый с желтым"
//        label.font = Fonts.openSansRegular(size: 16)
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        return label
//    }()
//
//    private let separator1: UIView = {
//        let view = UIView()
//        view.layer.backgroundColor = UIColor(red: 0.846, green: 0.846, blue: 0.846, alpha: 1).cgColor
//        return view
//    }()
//
//    private let ageBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let ageLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Возраст"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        return label
//    }()
//
//    private let ageLabelInput: UILabel = {
//        let label = UILabel()
//        label.text = "15 лет"
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        label.font = Fonts.openSansRegular(size: 16)
//        return label
//    }()
//
//    private let genderLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Пол"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        return label
//    }()
//
//    private let genderLabelInput: UILabel = {
//        let label = UILabel()
//        label.text = "Мужской"
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        label.font = Fonts.openSansRegular(size: 16)
//        return label
//    }()
//
//    private let ageOfBirthLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Дата рождения"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        return label
//    }()
//
//    private let ageOfBirthLabelInput: UILabel = {
//        let label = UILabel()
//        label.text = "16.01.1991"
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        label.font = Fonts.openSansRegular(size: 16)
//        return label
//    }()
//
//    private let separator2: UIView = {
//        let view = UIView()
//        view.layer.backgroundColor = UIColor(red: 0.846, green: 0.846, blue: 0.846, alpha: 1).cgColor
//        return view
//    }()
//
//    private let chipNumberBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let chipNumberLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Номер чипа"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        return label
//    }()
//
//    private let chipNumberLabelInput: UILabel = {
//        let label = UILabel()
//        label.text = "Замечательным кореллам он не нужен"
//        label.font = Fonts.openSansRegular(size: 16)
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        return label
//    }()
//
//    private let implantationDateBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let implantationDateLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Дата имплантации"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        return label
//    }()
//
//    private let implantationDateLabelInput: UILabel = {
//        let label = UILabel()
//        label.text = "16.01.1998"
//        label.font = Fonts.openSansRegular(size: 16)
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        return label
//    }()
//
//    private let chipPlacementBackground: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .white
//        return imageView
//    }()
//
//    private let chipPlacementLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Размещение чипа"
//        label.textColor = UIColor(red: 27/255, green: 35/255, blue: 48/255, alpha: 1)
//        label.font = Fonts.openSansBold(size: 14)
//        return label
//    }()
//
//    private let chipPlacementLabelInput: UILabel = {
//        let label = UILabel()
//        label.text = ""
//        label.font = Fonts.openSansRegular(size: 16)
//        label.textColor = UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
//        return label
//    }()
//
//    private let deletePetCardButton: CustomEnterButton = {
//        let button = CustomEnterButton(color: .red, type: .normal)
//        button.titleLabel?.font = Fonts.proximaNovaSemibold(size: 18)
//        button.setTitle("Удалить карточку питомца", for: .normal)
//        return button
//    }()
//
//    private let editButton: CustomEnterButton = {
//        let button = CustomEnterButton(color: .green, type: .editPet)
//        return button
//    }()
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        editButton.setImage(UIImage(named: "Pencil"), for: .normal)
//        if let imageView = editButton.imageView {
//            editButton.bringSubviewToFront(imageView)
//        }
//        setupView()
//    }
//
//
//    func dataFromControllerGoesToView(detail: PetDetails, parameter: String) {
//        switch detail {
//        case .name:
//            petName.text = parameter
//        case .species:
//            breedInput.text = parameter
//        case .specialSigns:
//            specialSignInput.text = parameter
//        case .color:
//            paintInput.text = parameter
//        case .age:
//            ageLabelInput.text = parameter
//        case .birthDate:
//            ageOfBirthLabelInput.text = parameter
//        case .gender:
//            genderLabelInput.text = parameter
//        case .chipNumber:
//            chipNumberLabelInput.text = parameter
//        case .implantationDate:
//            implantationDateLabelInput.text = parameter
//        case .chipPlacement:
//            chipPlacementLabelInput.text = parameter
//        case .registrationDate:
//            petRegistrationDate.text = "Добавлен \(parameter)"
//        }
//    }
//
//    func deletePetCardButtonPressed() -> UIButton {
//        deletePetCardButton
//    }
//
//    func petPortraitPickButtonPressed() -> UIButton {
//        petPortraitPickButton
//    }
//
//    func petPortraitImageToVC() -> UIImageView {
//        petPortrait
//    }
//
//    func editPetButtonPressed() -> UIButton {
//        editButton
//    }
//
//    init() {
//        super.init(frame: .zero)
//        breedBackground.roundCorners(with: [
//            .layerMaxXMinYCorner,
//            .layerMinXMinYCorner],
//                                     radius: 10)
//        paintBackground.roundCorners(with: [
//            .layerMaxXMaxYCorner,
//            .layerMinXMaxYCorner],
//                                     radius: 10)
//        ageBackground.roundCorners(with: [
//            .layerMinXMaxYCorner,
//            .layerMinXMinYCorner,
//            .layerMaxXMaxYCorner,
//            .layerMaxXMinYCorner],
//                                   radius: 10)
//        chipNumberBackground.roundCorners(with: [
//            .layerMaxXMinYCorner,
//            .layerMinXMinYCorner],
//                                          radius: 10)
//        chipPlacementBackground.roundCorners(with: [
//            .layerMaxXMaxYCorner,
//            .layerMinXMaxYCorner],
//                                             radius: 10)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//extension PetDetailView {
//
//    private func setupView() {
//
//        self.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.969, alpha: 1)
//        scrollView.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.969, alpha: 1)
//
//        self.addSubview(scrollView)
//        scrollView.snp.makeConstraints { make in
//            make.left.equalToSuperview()
//            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
//            make.right.equalToSuperview()
//            make.bottom.equalToSuperview()
//        }
//
//        scrollView.addSubview(petPortrait)
//        petPortrait.snp.makeConstraints { make in
//            make.width.height.equalTo(96)
//            make.centerX.equalTo(scrollView.snp.centerX)
//            make.top.equalTo(scrollView.snp.top).offset(13)
//        }
//
//        scrollView.addSubview(petPortraitPickButton)
//        petPortraitPickButton.snp.makeConstraints { make in
//            make.width.height.equalTo(96)
//            make.centerX.equalTo(scrollView.snp.centerX)
//            make.top.equalTo(scrollView.snp.top).offset(13)
//        }
//
//        scrollView.addSubview(petName)
//        petName.snp.makeConstraints { make in
//            make.top.equalTo(petPortrait.snp.bottom).offset(10)
//            make.centerX.equalToSuperview()
//            make.left.equalToSuperview().offset(5)
//            make.right.equalToSuperview().offset(5)
//            make.height.equalTo(27)
//        }
//
//        scrollView.addSubview(petRegistrationDate)
//        petRegistrationDate.snp.makeConstraints { make in
//            make.top.equalTo(petName.snp.bottom).offset(5)
//            make.centerX.equalTo(petPortrait.snp.centerX)
//            make.left.equalToSuperview().offset(5)
//            make.right.equalToSuperview().offset(5)
//            make.height.equalTo(17)
//        }
//
//        scrollView.addSubview(vetCardButton)
//        vetCardButton.snp.makeConstraints { make in
//            make.top.equalTo(petRegistrationDate.snp.bottom).offset(15)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(50)
//        }
//
//        scrollView.addSubview(breedBackground)
//        breedBackground.snp.makeConstraints { make in
//            make.top.equalTo(vetCardButton.snp.bottom).offset(20)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(48)
//        }
//
//        breedBackground.addSubview(breed)
//        breed.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.width.equalTo(55)
//            make.left.equalToSuperview().offset(18)
//        }
//
//        breedBackground.addSubview(breedInput)
//        breedInput.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.left.equalTo(breed.snp.right).offset(16)
//            make.right.equalToSuperview()
//        }
//
//        specialSignsBackground.addSubview(specialSign)
//        specialSign.snp.makeConstraints { make in
//            make.left.equalToSuperview().offset(18)
//            make.top.equalToSuperview().offset(15)
//            make.width.equalTo(128)
//            make.left.equalToSuperview().offset(18)
//        }
//
//        specialSignsBackground.addSubview(specialSignInput)
//        specialSignInput.snp.makeConstraints { make in
//            make.left.equalToSuperview().offset(18)
//            make.top.equalTo(specialSign.snp.bottom).offset(5)
//            make.right.equalToSuperview().offset(-15)
//        }
//
//        scrollView.addSubview(specialSignsBackground)
//        specialSignsBackground.snp.makeConstraints { make in
//            make.top.equalTo(breedBackground.snp.bottom).offset(7)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.bottom.equalTo(specialSignInput.snp.bottom).offset(13)
//        }
//
//        scrollView.addSubview(paintBackground)
//        paintBackground.snp.makeConstraints { make in
//            make.top.equalTo(specialSignsBackground.snp.bottom).offset(7)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(48)
//        }
//
//        paintBackground.addSubview(paint)
//        paint.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.left.equalToSuperview().offset(18)
//            make.width.equalTo(45)
//        }
//
//        paintBackground.addSubview(paintInput)
//        paintInput.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.left.equalTo(paint.snp.right).offset(26)
//        }
//
//        scrollView.addSubview(separator1)
//        separator1.snp.makeConstraints { make in
//            make.top.equalTo(paintBackground.snp.bottom).offset(20)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-90)
//            make.height.equalTo(1)
//        }
//
//        scrollView.addSubview(ageBackground)
//        ageBackground.snp.makeConstraints { make in
//            make.top.equalTo(separator1.snp.bottom).offset(20)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(74)
//        }
//
//        ageBackground.addSubview(ageLabel)
//        ageLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(13)
//            make.left.equalToSuperview().offset(18)
//            make.width.equalTo(self.frame.width/5)
//        }
//
//        ageBackground.addSubview(ageLabelInput)
//        ageLabelInput.snp.makeConstraints { make in
//            make.top.equalTo(ageLabel.snp.bottom).offset(7)
//            make.left.equalToSuperview().offset(18)
//        }
//
//        ageBackground.addSubview(genderLabel)
//        genderLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(13)
//            make.left.equalTo(ageLabel.snp.right).offset(18)
//            make.width.equalTo(self.frame.width/5)
//        }
//
//        ageBackground.addSubview(genderLabelInput)
//        genderLabelInput.snp.makeConstraints { make in
//            make.top.equalTo(genderLabel.snp.bottom).offset(7)
//            make.left.equalTo(genderLabel.snp.left)
//        }
//
//        ageBackground.addSubview(ageOfBirthLabel)
//        ageOfBirthLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(13)
//            make.right.equalToSuperview().offset(-10)
//            make.width.equalTo(self.frame.width/3)
//        }
//
//        ageBackground.addSubview(ageOfBirthLabelInput)
//        ageOfBirthLabelInput.snp.makeConstraints { make in
//            make.top.equalTo(ageOfBirthLabel.snp.bottom).offset(7)
//            make.left.equalTo(ageOfBirthLabel.snp.left)
//        }
//
//        scrollView.addSubview(separator2)
//        separator2.snp.makeConstraints { make in
//            make.top.equalTo(ageBackground.snp.bottom).offset(20)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-90)
//            make.height.equalTo(1)
//        }
//
//        scrollView.addSubview(chipNumberBackground)
//        chipNumberBackground.snp.makeConstraints { make in
//            make.top.equalTo(separator2.snp.bottom).offset(20)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(74)
//        }
//
//        chipNumberBackground.addSubview(chipNumberLabel)
//        chipNumberLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(13)
//            make.left.equalToSuperview().offset(18)
//        }
//
//        chipNumberBackground.addSubview(chipNumberLabelInput)
//        chipNumberLabelInput.snp.makeConstraints { make in
//            make.top.equalTo(chipNumberLabel.snp.bottom).offset(7)
//            make.left.equalTo(chipNumberLabel.snp.left)
//        }
//
//        scrollView.addSubview(implantationDateBackground)
//        implantationDateBackground.snp.makeConstraints { make in
//            make.top.equalTo(chipNumberBackground.snp.bottom).offset(7)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(74)
//        }
//
//        implantationDateBackground.addSubview(implantationDateLabel)
//        implantationDateLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(13)
//            make.left.equalToSuperview().offset(18)
//        }
//
//        implantationDateBackground.addSubview(implantationDateLabelInput)
//        implantationDateLabelInput.snp.makeConstraints { make in
//            make.top.equalTo(implantationDateLabel.snp.bottom).offset(7)
//            make.left.equalTo(implantationDateLabel.snp.left)
//        }
//
//        scrollView.addSubview(chipPlacementBackground)
//        chipPlacementBackground.snp.makeConstraints { make in
//            make.top.equalTo(implantationDateBackground.snp.bottom).offset(7)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(74)
//
//        }
//
//        chipPlacementBackground.addSubview(chipPlacementLabel)
//        chipPlacementLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(13)
//            make.left.equalToSuperview().offset(18)
//        }
//
//        chipPlacementBackground.addSubview(chipPlacementLabelInput)
//        chipPlacementLabelInput.snp.makeConstraints { make in
//            make.top.equalTo(chipPlacementLabel.snp.bottom).offset(7)
//            make.left.equalTo(chipPlacementLabel.snp.left)
//        }
//
//        scrollView.addSubview(deletePetCardButton)
//        deletePetCardButton.snp.makeConstraints { make in
//            make.top.equalTo(chipPlacementBackground.snp.bottom).offset(18)
//            make.centerX.equalToSuperview()
//            make.width.equalToSuperview().offset(-30)
//            make.height.equalTo(50)
//            make.bottom.equalToSuperview().offset(-20)
//        }
//
//        scrollView.addSubview(editButton)
//        editButton.snp.makeConstraints { make in
//            make.centerY.equalTo(separator2.snp.bottom)
//            make.height.width.equalTo(60)
//            make.right.equalToSuperview().offset(-30)
//        }
//    }
//}
//
//extension UIView {
//    func roundCorners(with CACornerMask: CACornerMask, radius: CGFloat) {
//        self.layer.cornerRadius = radius
//        self.layer.maskedCorners = [CACornerMask]
//    }
//}
