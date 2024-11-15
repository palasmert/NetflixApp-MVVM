//
//  MainHeroHeaderView.swift
//  NetflixApp-MVVM
//
//  Created by Mert Palas on 15.11.2024.
//

import UIKit

class MainHeroHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        lazy var heroImageView = UIImageView()
        heroImageView.image = UIImage(named: "batman_Image")
        addSubview(heroImageView)
        heroImageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.left.right.equalToSuperview()
            make.height.equalTo(screenHeight * 0.35)
        }
        addGradient()
 
        lazy var playButton = UIButton()
        playButton.setTitle("Play", for: .normal)
        playButton.layer.borderColor = UIColor.white.cgColor
        playButton.layer.borderWidth = 1
        playButton.layer.cornerRadius = 12
        addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0.3 * screenHeight)
            make.left.equalToSuperview().offset(0.2 * screenWidth)
            make.width.equalTo(100)
        }
        lazy var DownloadButton = UIButton()
        DownloadButton.setTitle("Download", for: .normal)
        DownloadButton.layer.borderColor = UIColor.white.cgColor
        DownloadButton.layer.borderWidth = 1
        DownloadButton.layer.cornerRadius = 12
        addSubview(DownloadButton)
        DownloadButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0.3 * screenHeight)
            make.right.equalToSuperview().offset(-0.2 * screenWidth)
            make.width.equalTo(100)
        }
    }
    
    private func addGradient() {
        lazy var gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        self.layer.addSublayer(gradientLayer)
    }
}
