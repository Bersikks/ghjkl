//
//  OnboardingCollectionViewCell.swift
//  session1
//
//  Created by Саввина Елена on 14.03.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    func setup(_ slide: OnboardingSlide) {
        imageLabel.image = slide.image
        descriptionLabel.text = slide.description
        titleLabel.text = slide.title
    }
}
