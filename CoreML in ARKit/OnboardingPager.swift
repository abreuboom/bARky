//
//  OnboardingPager.swift
//  CoreML in ARKit
//
//  Created by Yasmeen Roumie on 10/21/17.
//  Copyright © 2017 CompanyName. All rights reserved.
//

import Foundation
import UIKit
class OnboardingPager : UIPageViewController {
    
    func getStepZero() -> StepZero {
        return storyboard!.instantiateViewController(withIdentifier: "StepZero") as! StepZero
    }
    
    func getStepOne() -> StepOne {
        return storyboard!.instantiateViewController(withIdentifier: "StepOne") as! StepOne
    }
    
    func getStepTwo() -> StepTwo {
        return storyboard!.instantiateViewController(withIdentifier: "StepTwo") as! StepTwo
    }
    
    func getStepThree() -> StepThree {
        return storyboard!.instantiateViewController(withIdentifier: "StepThree") as! StepThree
    }
    override func viewDidLoad() {
        view.backgroundColor = .darkGray
        dataSource = self
        setViewControllers([getStepZero()], direction: .forward, animated: false, completion: nil)
    }
    
}

extension OnboardingPager : UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController is StepThree {
            return getStepTwo()
        } else if viewController is StepTwo {
            return getStepOne()
        } else if viewController is StepOne {
            return getStepZero()
        } else {
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController is StepZero {
            return getStepOne()
        } else if viewController is StepOne {
            return getStepTwo()
        } else if viewController is StepTwo {
            return getStepThree()
        } else {
            return nil
        }
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 4
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
