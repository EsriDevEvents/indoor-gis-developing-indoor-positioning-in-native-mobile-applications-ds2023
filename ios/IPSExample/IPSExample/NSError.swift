//
// COPYRIGHT 2023 ESRI
//
// TRADE SECRETS: ESRI PROPRIETARY AND CONFIDENTIAL
// Unpublished material - all rights reserved under the
// Copyright Laws of the United States and applicable international
// laws, treaties, and conventions.
//
// For additional information, contact:
// Environmental Systems Research Institute, Inc.
// Attn: Contracts and Legal Services Department
// 380 New York Street
// Redlands, California, 92373
// USA
//
// email: contracts@esri.com
//

import Foundation

extension NSError {
    var isNoInternetError: Bool {
        guard self.domain == NSURLErrorDomain else {
            return false
        }
        
        return [NSURLErrorNotConnectedToInternet,
                NSURLErrorCannotConnectToHost,
                NSURLErrorNetworkConnectionLost].contains(code)
    }
}
