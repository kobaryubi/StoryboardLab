import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func sayHello() {
        label.text = "Hello, World!"
    }
    @IBOutlet weak var sliderLabel: UILabel!
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = "\(sender.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
