//
//  String+HTML.swift
//  symblify-ios
//
//  Created by Zsolt Pete on 2017. 05. 12..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import UIKit

extension String {
    
    public var html2AttributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: Data(utf8),
                                          options: [.documentType: NSAttributedString.DocumentType.html,
                                                    .characterEncoding: String.Encoding.utf8.rawValue],
                                          documentAttributes: nil)
        } catch {
            print("error: ", error)
            return nil
        }
    }
    
    public var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}

