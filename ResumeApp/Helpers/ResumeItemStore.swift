//
//  ResumeItemStore.swift
//  ResumeApp
//
//  Created by David Malicke on 1/19/22.
//

import Foundation
import SwiftUI



let frankfurtIndustries = ResumeItem(
    id: UUID().uuidString,
    startDate: "February 2021",
    endDate: "Present",
    name: "Frankfurt Industries",
    thumbnail: URL(string: "https://frankfurtindustries.neocities.org/images/bg.jpg")!,
    location: "Ann Arbor, MI",
    companyName: "Frankfurt Industries",
    departmentName: nil,
    jobTitle: "iOS Software Developer",
    schoolName: nil,
    degreeName: nil,
    overLay: nil,
    shortDescription: "Lead iOS software development at Frankfurt Industries.",
    longDescription: nil,
    list: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
    projects: [umSalaryPub],
    categories: ["iOS, SwiftUI, CoreData"])

let operationsLead = ResumeItem(
    id: UUID().uuidString,
    startDate: "January 2017",
    endDate: "Present",
    name: "Operation's Lead",
    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/1899_Michigan_Wolverines_football_team.jpg/640px-1899_Michigan_Wolverines_football_team.jpg")!,
    location: "Ann Arbor, MI",
    companyName: "University of Michigan",
    departmentName: "Center for Academic Innovation",
    jobTitle: "Operation's Lead",
    schoolName: nil,
    degreeName: nil,
    overLay: nil,
    shortDescription: "The straw that stirs the drink.",
    longDescription: "Areas of focus include internal communications, optimizing internal and external collaboration processes, and the development and maintenance of a variety of information processes.",
    list: ["Work closely with CAI teams to develop and refine the underlying social, technical and process infrastructure required to meet the Center’s growing project and administrative needs.", "Improve project reporting and transparency by co-developing project management bandwidth boards and managing ingest of project portfolio data into Salesforce", "Operationalized cross-team processes for keeping Salesforce up-to-date", "Built and launched new intranet to serve as the Center’s internal platform for policies, guidelines, and HR resources","Co-developed copyright clearance process."],
    projects: [salesForce],
    categories: ["Change Management", "Process Management", "Mentorship"])

let projectManager = ResumeItem(
    id: UUID().uuidString,
    startDate: "June 2015",
    endDate: "January 2017",
    name: "Project Manager",
    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/AngellHall2010.JPG/640px-AngellHall2010.JPG")!,
    location: "Ann Arbor, MI",
    companyName: "University of Michigan",
    departmentName: "Center for Academic Innovation",
    jobTitle: "Project Manager",
    schoolName: nil,
    degreeName: nil,
    overLay: nil,
    shortDescription: nil,
    longDescription: "Managed the development, production, launch, and maintenance of 22 massive open online courses (MOOCs) and a variety of venture-funded digital education projects.",
    list: ["Worked closely with faculty, learning experience designers, digital media specialists, and vendor partners throughout all course production processes", "Assembled and published course materials on vendor platforms."],
    projects: [dataScienceEthics],
    categories: ["Coursera", "Edx"])

let masterDegree = ResumeItem(
    id: UUID().uuidString,
    startDate: nil,
    endDate: "April 2011",
    name: "Master of Science in Information",
    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg/640px-Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg")!,
    location: "Ann Arbor, MI",
    companyName: nil,
    departmentName: nil,
    jobTitle: nil,
    schoolName: "University of Michigan",
    //department
    degreeName: "Master of Science in Information",
    //specialization
    overLay: nil,
    //GPA
    shortDescription: nil,
    longDescription: nil,
    list: ["Initiated into the Honor Society of Phi Kappa Phi. Membership is by invitation only to the top 10 percent of graduate students at a university"],
    projects: nil,
    categories: ["education"])


//let bachelorDegree= ResumeItem(
//    id: UUID().uuidString,
//    startDate: <#T##String#>,
//    endDate: <#T##String?#>,
//    name: <#T##String#>,
//    thumbnail: <#T##URL#>,
//    location: <#T##String?#>,
//    companyName: <#T##String?#>,
//    departmentName: <#T##String?#>,
//    jobTitle: <#T##String?#>,
//    schoolName: <#T##String?#>,
//    degreeName: <#T##String?#>,
//    overLay: <#T##String?#>,
//    shortDescription: <#T##String?#>,
//    longDescription: <#T##String?#>,
//    list: <#T##[String]?#>,
//    projects: <#T##[Project]?#>,
//    categories: <#T##[String]#>)


//let sampleItem = ResumeItem(
//    id: <#T##String#>,
//    startDate: <#T##String#>,
//    endDate: <#T##String?#>,
//    name: <#T##String#>,
//    thumbnail: <#T##URL#>,
//    location: <#T##String?#>,
//    companyName: <#T##String?#>,
//    departmentName: <#T##String?#>,
//    jobTitle: <#T##String?#>,
//    schoolName: <#T##String?#>,
//    degreeName: <#T##String?#>,
//    overLay: <#T##String?#>,
//    shortDescription: <#T##String?#>,
//    longDescription: <#T##String?#>,
//    list: <#T##[String]?#>,
//    projects: <#T##[Project]?#>,
//    categories: <#T##[String]#>)


let pythonForEverybody = Project(
    id: UUID().uuidString,
    name: "Python for Everybody Course series",
    thumbnails: [URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Charles_Severance.jpg/640px-Charles_Severance.jpg")!],
    videos: nil,
    link: URL(string: "https://www.coursera.org/specializations/python")!,
    shortDescription: "One of the most successful series of online courses",
    longDescription: "This thing made a lot of money, wow!",
    list: ["The things I did for this course", "wow, i think it was a lot at the time."],
    tags: ["Coursera", "MOOC", "Project Management"])

let dataScienceEthics = Project(
    id: UUID().uuidString,
    name: "Data Science Ethics",
    thumbnails: [URL(string: "https://upload.wikimedia.org/wikipedia/commons/d/dd/Amdahl_470V-6_computer_at_U_of_M.jpg")!],
    videos: [URL(string: "https://www.youtube.com/watch?v=xYPSFc7ZL0U")!],
    link: URL(string: "https://www.edx.org/course/data-science-ethics")!,
    shortDescription: nil,
    longDescription: nil,
    list: nil,
    tags: ["edx", "ethics", "data science"])


let salesForce = Project (
    id: UUID().uuidString,
    name: "SalesForce",
    thumbnails: nil,
    videos: nil,
    link: nil,
    shortDescription: "Bending salesforce to our will.",
    longDescription: "Salesforce as the insitutional repository of data at the Center of Academic Innovation.",
    list: ["List of a bunch of things about the project", "Another list of things"],
    tags: ["SalesForce","CRM", ""])

let umSalaryPub = Project(
    id: UUID().uuidString,
    name: "UM SalaryPub",
    thumbnails: nil,
    videos: nil,
    link: nil,
    shortDescription: "An app for searching and comparing salaries",
    longDescription: "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.",
    list: ["List of a bunch of things about the project", "Another list of things"],
    tags: ["iOS, SwiftUI, CoreData, UIKit"])



//let pythonForEverybody = Project(
//    id: <#T##String#>,
//    name: <#T##String#>,
//    thumbnails: <#T##[URL]?#>,
//    videos: <#T##[URL]?#>,
//    link: <#T##URL?#>,
//    shortDescription: <#T##String?#>,
//    longDescription: <#T##String?#>,
//    list: <#T##[String]?#>,
//    tags: <#T##[String]?#>)


//let sampleItem = ResumeItem(
//    id: <#T##String#>,
//    startDate: <#T##String#>,
//    endDate: <#T##String?#>,
//    name: <#T##String#>,
//    thumbnail: <#T##URL#>,
//    location: <#T##String?#>,
//    companyName: <#T##String?#>,
//    departmentName: <#T##String?#>,
//    jobTitle: <#T##String?#>,
//    schoolName: <#T##String?#>,
//    degreeName: <#T##String?#>,
//    overLay: <#T##String?#>,
//    shortDescription: <#T##String?#>,
//    longDescription: <#T##String?#>,
//    list: <#T##[String]?#>,
//    projects: <#T##[Project]?#>,
//    categories: <#T##[String]#>)
