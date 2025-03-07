//
//  TrustbadgeState.swift
//  Trustylib
//
//  Created by Prem Pratap Singh on 24/11/22.
//

import Foundation


/**
 TrustbadgeState enumeration defines different possible UI states for the trustbadge view.
 These states are,
 1. `default` - In default state, the trustbadge view is presented as a circular badge icon aka `Seal`
 2. `expended` - In expended state, the trustbadge view shows a sub view expanding to show shop/product grade or other details
 3. `expendedAsPopup` - In this state, the trustbadge view is shown as a popup with a close button. This state helps in showing
 more details.
 4. `invisible` - In this state, the trustbadge view contents are hidden
 */
enum TrustbadgeState: Equatable {
    case `default`(Bool)
    case expended
    case expendedAsPopup
    case invisible

    // MARK: Public properties

    /// Icon name for the state
    var iconImageName: String {
        switch self {
        case .default(let isValid): return isValid ? "trustmarkIcon" : "trustmarkIconInvalidCertificate"
        case .expended: return ""
        case .expendedAsPopup: return "blueCrossIcon"
        case .invisible: return ""
        }
    }
}
