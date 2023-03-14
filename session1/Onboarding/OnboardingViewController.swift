//
//  OnboardingViewController.swift
//  session1
//
//  Created by Саввина Елена on 14.03.2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = [OnboardingSlide(title: "Анализы", description: "Экспресс сбор и получение проб", image: #imageLiteral(resourceName: "Illustration")), OnboardingSlide(title: "Уведомление", description: "Вы быстро узнаете о результатах", image: #imageLiteral(resourceName: "Снимок экрана 2022-09-17 в 19.21 1")), OnboardingSlide(title: "Мониторинг", description: "Наши врачи всегда наблюдают за вашими показателями здоровья", image: #imageLiteral(resourceName: "130 1"))]
    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        let currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
}
