//
//  TagsTableViewController.swift
//  Homework3
//
//  Created by Ayyanchira, Akshay Murari on 10/19/17.
//  Copyright © 2017 Shehab, Mohamed. All rights reserved.
//

import UIKit
import Alamofire

class TagsTableViewController: UITableViewController {

    var tagDictionary = [String:Tag]()
    var tagNames = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //fetch top tags
        loadTags()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadTags() {
        Alamofire.request("https://gpodder.net/api/2/tags/20.json").responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)")
                if let tagsArray = json as? [[String:Any]]
                {
                    for tag in tagsArray {
                        let tagName = tag["tag"] as! String
                        let tagTitle = tag["title"] as! String
                        let tagUsage = tag["usage"] as! Int
                        let tagObject = Tag(tag: tagName, title: tagTitle, usage: tagUsage)
                        self.tagDictionary[tagName] = tagObject
                        self.tagNames.append(tagName)
                    }
                    self.tableView.reloadData()
                    
                }
            }
        }
        
    }
    
    
    
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        if tagDictionary.count>0{return 1}
        else {return 0}
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tagDictionary.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = tagNames[indexPath.row]
        
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell = tableView.cellForRow(at: indexPath)
        let selectedtag:Tag = tagDictionary[(selectedCell?.textLabel?.text)!]!
        getPodcastsFor(tag: selectedtag)
    }
    
    func getPodcastsFor(tag:Tag) {
        Alamofire.request("https://gpodder.net/api/2/tag/\(tag.tag)/10.json").responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)")
                if let podcastArray = json as? [[String:Any]]
                {
                    var podcastObjectArray:[PodcastInfo] = []
                    for podcast in podcastArray {
                        let podcastObject = PodcastInfo(dictionary: podcast as NSDictionary)
                        podcastObjectArray.append(podcastObject!)
                    }
                    self.performSegue(withIdentifier: "PodcastList", sender: podcastObjectArray)
                }
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called")
        let podcastTableViewController = segue.destination as! PodcastTableViewController
        podcastTableViewController.podcastArray = sender as? [PodcastInfo]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
