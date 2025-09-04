import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,
    UINavigationControllerDelegate
{
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

    @IBOutlet weak var cameraImageView: UIImageView!
    @IBAction func launchCamera(_ sender: UIBarButtonItem) {
        let camera = UIImagePickerController.SourceType.camera
        if UIImagePickerController.isSourceTypeAvailable(camera) {
            let picker = UIImagePickerController()
            picker.sourceType = camera
            picker.delegate = self
            self.present(picker, animated: true)
        }
    }

    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey:
            Any]
    ) {
        guard
            let image = info[UIImagePickerController.InfoKey.originalImage]
                as? UIImage
        else { return }
        cameraImageView.image = image
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
