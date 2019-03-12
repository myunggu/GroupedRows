//
//  GroupingViewController.swift
//  GroupedRows
//
//  Created by Myunggu Kim on 28/12/2018.
//  Copyright © 2018 myunggukim. All rights reserved.
//

import UIKit

class GroupingViewController: UIViewController {
    @IBOutlet var cellStackView1: UIStackView!
    @IBOutlet var cellStackView2: UIStackView!
    @IBOutlet var cellStackView3: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Group1
        addCell(to: cellStackView1)
        addCell(to: cellStackView1)
        addCell(to: cellStackView1)
        addCell(to: cellStackView1)
        
        // Group2
        addCell(to: cellStackView2)
        addCell(to: cellStackView2)
        addCell(to: cellStackView2)
        addCell(to: cellStackView2)
        addCell(to: cellStackView2)
        addCell(to: cellStackView2)
        addCell(to: cellStackView2)
        
        // Group3
        addCell(to: cellStackView3)
        addCell(to: cellStackView3)
        addCell(to: cellStackView3)
        addCell(to: cellStackView3)
        addCell(to: cellStackView3)
        addCell(to: cellStackView3)
    }
    
    @IBAction func actionRemove(_ sender: Any) {
        removeCell(to: cellStackView1)
    }
    
    @IBAction func actionAdd(_ sender: Any) {
        addCell(to: cellStackView1)
    }
    
    
    
    func addCell(to stackView: UIStackView) {
        let cell = Bundle.main.loadNibNamed("StackCells", owner: self, options: nil)![0] as! StackCell
        cell.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cell.label.text = "Cell \(stackView.arrangedSubviews.count)"
        stackView.addArrangedSubview(cell)
        
    }
    
    func removeCell(to stackView: UIStackView) {
        let cell = stackView.arrangedSubviews.first!
        stackView.removeArrangedSubview(cell)
        cell.removeFromSuperview()
    }
}
