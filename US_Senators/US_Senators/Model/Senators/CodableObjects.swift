//
//  CodableObjects.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

// MARK: - SenatorsResponse
struct SenatorsResponse: Codable {
    let meta: Meta
    let objects: [Object]
}

// MARK: - Meta
struct Meta: Codable {
    let limit, offset, totalCount: Int

    enum CodingKeys: String, CodingKey {
        case limit, offset
        case totalCount = "total_count"
    }
}

// MARK: - Object
struct Object: Codable {
    let congressNumbers: [Int]
    let current: Bool
    let objectDescription: String
    let enddate: String
    let extra: Extra
    let leadershipTitle: String?
    let party: String
    let person: Person
    let phone: String
    let startdate, state: String
    let title: String
    let titleLong: String
    let website: String

    enum CodingKeys: String, CodingKey {
        case congressNumbers = "congress_numbers"
        case current
        case objectDescription = "description"
        case enddate, extra
        case leadershipTitle = "leadership_title"
        case party, person, phone
        case startdate, state, title
        case titleLong = "title_long"
        case website
    }
}

// MARK: - Extra
struct Extra: Codable {
    let address: String
    let contactForm: String
    let fax: String?
    let office: String
    let rssURL: String?
    let endType, how: String?

    enum CodingKeys: String, CodingKey {
        case address
        case contactForm = "contact_form"
        case fax, office
        case rssURL = "rss_url"
        case endType = "end-type"
        case how
    }
}

// MARK: - Person
struct Person: Codable {
    let bioguideid, birthday: String
    let cspanid: Int?
    let firstname: String
    let gender: String
    let lastname: String
    let link: String
    let middlename, name: String
    let nickname: String
    let osid, pvsid: String?
    let sortname: String
    let twitterid, youtubeid: String?

    enum CodingKeys: String, CodingKey {
        case bioguideid, birthday, cspanid, firstname, gender
        case lastname, link, middlename, name, nickname, osid, pvsid, sortname, twitterid, youtubeid
    }
}
