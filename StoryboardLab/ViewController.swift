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
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func showActivityView(_ sender: UIBarButtonItem) {
        let controller = UIActivityViewController(
            activityItems: [imageView.image!],
            applicationActivities: nil
        )
        self.present(
            controller,
            animated: true,
            completion: {
                print("表示完了")
            }
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
