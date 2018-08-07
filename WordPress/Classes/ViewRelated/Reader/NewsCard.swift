import UIKit

/// UI of the New Card
final class NewsCard: UIViewController {
    @IBOutlet weak var dismiss: UIButton!
    @IBOutlet weak var illustration: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsSubtitle: UILabel!
    @IBOutlet weak var newsAction: UILabel!

    private let manager: NewsManager

    init(manager: NewsManager) {
        self.manager = manager
        super.init(nibName: "NewsCard", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        print("==== card did load ====")
        super.viewDidLoad()
        view.backgroundColor = .red
        initIllustration()
        loadContent()
    }

    private func initIllustration() {
        illustration.image = UIImage(named: "wp-illustration-notifications")
    }

    private func loadContent() {
        manager.load { newsItem in
            print("news item")
        }
    }
}