//
//  ZFStories.swift
//  ZHTest
//
//  Created by apple on 16/7/22.
//  Copyright © 2016年 QZ. All rights reserved.
//

import UIKit
import SwiftyJSON

class ZFStories: NSObject ,NSCoding{

    // MARK: Declaration for string constants to be used to decode and also serialize.
    let kZFStoriesTitleKey: String = "title"
    let kZFStoriesTypeKey: String = "type"
    let kZFStoriesInternalIdentifierKey: String = "id"
    let kZFStoriesMultipicKey: String = "multipic"
    let kZFStoriesImagesKey:   String = "images"
    let kZFStoriesGaPrefixKey:String = "ga_prefix"

    //MARK:  Properties
    public var title: String?
    public var type: Int?
    public var internalIdentifier: Int?
    public var multipic: Bool = false
    public var images: [String]?
    public var gaPrefix: String?
    
    
    public init(json: JSON) {
        title = json[kZFStoriesTitleKey].string
        type  = json[kZFStoriesTypeKey].int
        internalIdentifier = json[kZFStoriesInternalIdentifierKey].int
        multipic = json[kZFStoriesMultipicKey].boolValue
        let  _images  = json[kZFStoriesImagesKey].array
        
        if let _is = _images {
            images = []
            
            for i in _is {
                images?.append(i.string!)
            }
        }
        
        gaPrefix = json[kZFStoriesGaPrefixKey].string
        
    }
    
    public func dictionaryRepresentation() -> [String : AnyObject ] {
        var dictionary : [String : AnyObject ] = [ : ]
        if title != nil {
            dictionary.updateValue(title!, forKey: kZFStoriesTitleKey)
        }
        if type != nil {
            dictionary.updateValue(type!, forKey: kZFStoriesTypeKey)
        }
        if internalIdentifier != nil {
            dictionary.updateValue(internalIdentifier!, forKey:kZFStoriesInternalIdentifierKey )
        }
        dictionary.updateValue(multipic, forKey: kZFStoriesMultipicKey)
        if images?.count > 0 {
            var temp: [AnyObject] = []
            for item in images! {
                temp.append(item)
            }
            dictionary.updateValue(gaPrefix!, forKey: kZFStoriesGaPrefixKey)
            
        }
        
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.title = aDecoder.decodeObjectForKey(kZFStoriesTitleKey) as? String
        self.type = aDecoder.decodeObjectForKey(kZFStoriesTypeKey) as? Int
        self.internalIdentifier = aDecoder.decodeObjectForKey(kZFStoriesInternalIdentifierKey) as? Int
        self.multipic = aDecoder.decodeBoolForKey(kZFStoriesMultipicKey)
        self.images = aDecoder.decodeObjectForKey(kZFStoriesImagesKey) as? [String]
        self.gaPrefix = aDecoder.decodeObjectForKey(kZFStoriesGaPrefixKey) as? String
        
    }
    
    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: kZFStoriesTitleKey)
        aCoder.encodeObject(type, forKey: kZFStoriesTypeKey)
        aCoder.encodeObject(internalIdentifier, forKey: kZFStoriesInternalIdentifierKey)
        aCoder.encodeBool(multipic, forKey: kZFStoriesMultipicKey)
        aCoder.encodeObject(images, forKey: kZFStoriesImagesKey)
        aCoder.encodeObject(gaPrefix, forKey: kZFStoriesGaPrefixKey)
        
    }

    
    /**
     *  //是否使用通用的encode/decode代码一次性encode/decode
     #define USING_ENCODE_KIT
     WZLSERIALIZE_CODER_DECODER();

     */
}

