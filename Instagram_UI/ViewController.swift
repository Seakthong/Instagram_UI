//
//  ViewController.swift
//  Instagram_UI
//
//  Created by SQ on 11/21/19.
//  Copyright © 2019 SQ. All rights reserved.
//

import UIKit
struct Post{
    var profile: UIImage?
    var username: String?
    var postPhoto: UIImage?
    var likeAmount : Int?
    var userCaption : String?
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var data = [
        Post(profile: UIImage(named: "seakthong"), username: "Seakthong", postPhoto: UIImage(named: "kpImage"), likeAmount: 123, userCaption: "When we graduated basic course at Korea Software HRD. And we went to ..."),
        Post(profile: UIImage(named: "sokhok"), username: "Sok Hok", postPhoto: UIImage(named: "postSok"), likeAmount: 45, userCaption: "We were on a bus back to Phnom Penh ..."),
        Post(profile: UIImage(named: "mazer"), username: "Mazer BTB", postPhoto: UIImage(named: "mazer"), likeAmount: 67, userCaption: "Even though tired, we still happy..."),
        Post(profile: UIImage(named: "cham"), username: "KS", postPhoto: UIImage(named: "chercher"), likeAmount: 89, userCaption: "Our teacher looked so good and handsome ...")
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Testing", for: indexPath) as! PostTableViewCell
        cell.labelName.text = data[indexPath.row].username
        cell.profileLogoImageView.image = data[indexPath.row].profile
        cell.postImageView.image = data[indexPath.row].postPhoto
        cell.labelLikeAmount.text = "\((data[indexPath.row].likeAmount)!) Likes"
        cell.labelUserCaption.text = "\((data[indexPath.row].userCaption)!)"
        return cell;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        385
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navBarController: UINavigationBar!
    @IBOutlet weak var barItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let titleView = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 50))
//        let image = UIImage(named: "IGLogo")
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 15, width: 100, height: 29))
//        imageView.image = image
//        titleView.addSubview(imageView)
//        barItem.titleView = titleView;
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
    }


}

//https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png

