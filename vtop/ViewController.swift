import Cocoa
import WebKit
class ViewController: NSViewController {
    
    //Outlet
    @IBOutlet weak var load: WKWebView!
    
    //Variables
    let url1 = URL(string: "https://vtop.vit.ac.in/vtop/initialProcess")
    let customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.1 Safari/605.1.15"
 
    override func viewDidLoad() {
        super.viewDidLoad()
        let req = URLRequest(url: url1!)
        load.customUserAgent = customUserAgent
        load.load(req)
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
}
