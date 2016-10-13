import UIKit

class RootViewController: SideMenu {

    override func awakeFromNib() {

        self.menuPreferredStatusBarStyle = UIStatusBarStyle.lightContent
        self.contentViewShadowEnabled = true
        self.scaleMenuView = false
        self.scaleContentView = false
        self.scaleBackgroundImageView = false
        self.contentViewInPortraitOffsetCenterX = 120
        self.contentViewInLandscapeOffsetCenterX = 240

        // load initial view controller in Main SB -> NewsfeedViewController
        let mainSB = UIStoryboard(name: "Main", bundle: nil);
        self.contentViewController = mainSB.instantiateInitialViewController() 

        // Side Menu
        let sideMenuSB = UIStoryboard(name: "SideMenu", bundle: nil);
        self.leftMenuViewController = sideMenuSB.instantiateViewController(withIdentifier: "LeftTableNavigationController") 
        self.rightMenuViewController = nil;
        
        self.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - SideMenuDelegate
extension RootViewController: SideMenuDelegate {

    func sideMenu(sideMenu: SideMenu, willShowMenuViewController menuViewController: UIViewController) {
        print("willShowMenuViewController")
    }

    func sideMenu(sideMenu: SideMenu, didShowMenuViewController menuViewController: UIViewController) {
        print("didShowMenuViewController")
    }

    func sideMenu(sideMenu: SideMenu, willHideMenuViewController menuViewController: UIViewController) {
        print("willHideMenuViewController")
    }

    func sideMenu(sideMenu: SideMenu, didHideMenuViewController menuViewController: UIViewController) {
        print("didHideMenuViewController")
    }
}
