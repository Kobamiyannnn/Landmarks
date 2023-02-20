//
//  PageViewController.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/20
//  
//  Abstract:
//  A view that wraps a UIPageViewController.
//

import SwiftUI
import UIKit

// The page view controller stores an array of Page instances, which must be a type fo View.
// These are the pages you use to scroll between landmarks.
struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    // makeUIViewController method creates a UIPageViewController with the desired configuration.
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }

    // updateUIViewController method that calls setView Controllers to provide a view controller for display.
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
