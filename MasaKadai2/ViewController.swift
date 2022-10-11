//
//  ViewController.swift
//  MasaKadai2
//
//  Created by Mina on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var numberInputTextField1: UITextField!
    @IBOutlet weak private var numberInputTextField2: UITextField!
    @IBOutlet weak private var calcStatus: UISegmentedControl!
    @IBOutlet weak private var showNumberLabel: UILabel!

    @IBAction func resultButton(_ sender: Any) {
        let numberInput1 = Float(numberInputTextField1.text ?? "") ?? 0
        let numberInput2 = Float(numberInputTextField2.text ?? "") ?? 0

        switch calcStatus.selectedSegmentIndex {
        case 0:
            showNumberLabel.text = String(numberInput1 + numberInput2)
        case 1:
            showNumberLabel.text = String(numberInput1 - numberInput2)
        case 2:
            showNumberLabel.text = String(numberInput1 * numberInput2)
        case 3:
            if numberInput2 == 0 {
                showNumberLabel.text = "割る数には0以外を入力して下さい！"
            } else {
                showNumberLabel.text = String(numberInput1 / numberInput2)
            }
        default:
            assertionFailure("selectedSegmentIndex is invalid.")
        }
    }
}
