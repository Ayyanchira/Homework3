/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class PodcastInfo {
	public var website : String?
	public var subscribers : Int?
	public var title : String?
	public var url : String?
	public var subscribers_last_week : Int?
	public var description : String?
	public var scaled_logo_url : String?
	public var mygpo_link : String?
	public var logo_url : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Json4Swift_Base Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [PodcastInfo]
    {
        var models:[PodcastInfo] = []
        for item in array
        {
            models.append(PodcastInfo(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Json4Swift_Base Instance.
*/
	required public init?(dictionary: NSDictionary) {

		website = dictionary["website"] as? String
		subscribers = dictionary["subscribers"] as? Int
		title = dictionary["title"] as? String
		url = dictionary["url"] as? String
		subscribers_last_week = dictionary["subscribers_last_week"] as? Int
		description = dictionary["description"] as? String
		scaled_logo_url = dictionary["scaled_logo_url"] as? String
		mygpo_link = dictionary["mygpo_link"] as? String
		logo_url = dictionary["logo_url"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.website, forKey: "website")
		dictionary.setValue(self.subscribers, forKey: "subscribers")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.subscribers_last_week, forKey: "subscribers_last_week")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.scaled_logo_url, forKey: "scaled_logo_url")
		dictionary.setValue(self.mygpo_link, forKey: "mygpo_link")
		dictionary.setValue(self.logo_url, forKey: "logo_url")

		return dictionary
	}

}
