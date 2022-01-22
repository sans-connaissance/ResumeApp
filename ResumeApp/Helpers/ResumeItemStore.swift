//
//  ResumeItemStore.swift
//  ResumeApp
//
//  Created by David Malicke on 1/19/22.
//

import Foundation
import SwiftUI


/// Interesting thing about programming is all the different things you get to research and learn in order to optimize digital or to describe in data and code.
/// I hope that my experience shows I'm ready to apply all this experience and knowledge to writing better, descriptive, useful code for people that need things done.
let davidMalicke = Resume(
    id: UUID().uuidString,
    basics: resumeBasics,
    volunteer: nil,
    publications: [medAndSciencePub],
    skills: skills,
    references: nil,
    work: [frankfurtIndustries],
    languages: <#T##[Resume.Language]?#>,
    projects: <#T##[Resume.Project]?#>,
    awards: <#T##[Resume.Award]?#>,
    certificates: <#T##[Resume.Certificate]?#>,
    education: <#T##[Resume.Education]?#>,
    interests: <#T##[Resume.Interest]?#>,
    videos: <#T##[Resume.Video]?#>)


let resumeBasics = Resume.Basics(
    location: location,
    summary: "Experienced iOS Developer, Operations Lead, and Project Manager.",
    profiles: [gitHub],
    email: "davemalicke@gmail.com",
    label: nil,
    image: nil,
    name: "David Malicke",
    phone: "734-231-1111",
    url: URL(string: "https://www.linkedin.com/in/david-malicke-ios/")!)

let location = Resume.Basics.Location(
    address: "1715 South BLVD",
    postalCode: "48104",
    city: "Ann Arbor",
    region: "MI",
    countryCode: "USA")


/// PROFILES
let gitHub = Resume.Basics.Profile(
    id: UUID().uuidString,
    url: URL(string: "https://github.com/sans-connaissance"),
    network: nil,
    username: "sans-connaissance",
    thumbnail: URL(string: "https://cdn-icons-png.flaticon.com/512/25/25231.png"))

/// PUBLICATIONS
let medAndSciencePub = Resume.Publication(
        id: UUID().uuidString,
        summary: "Chapter 2: Open Access Journal Publishing",
        name: "Medical and Scientific Publishing: Author, Editor, and Reviewer Perspectives",
        publisher: "Elsevier",
        url: URL(string: "https://www.elsevier.com/books/medical-and-scientific-publishing/markovac/978-0-12-809969-8"),
        releaseDate: "Nov, 10 2017",
        thumbnail: URL(string: "https://secure-ecsd.elsevier.com/covers/80/Tango2/large/9780128099698.jpg"))


///SKILLS
let skills = [iosDev, operations, digitalPublishing, intellectualProperty]

let foundationalSkill = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Growth Mindset", "Learner", "Curious", "Critical", "Emotional Intelligence"],
    name: "Foundational Skills",
    level: "Junior")

let iosDev = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Agile", "CoreData", "GIT", "MVVM", "Vapor", "StackOverflow", "Swift",  "SwiftUI", "XCode"],
    name: "iOS Developer Skills",
    level: "Junior")

let operations = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Project Management", "Change Management", "Continuous Improvement", "Business Analysis", "Process Analysis", "Communication"],
    name: "Operations Lead Skill",
    level: "Seasoned Professional")

let digitalPublishing = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Editing", "Publishing", "Content Management Systems", "Drupal", "WordPress", "Wiki", "Meta Data", "Self-Publishing", "Guidelines", "Publishing Contracts", "Licensing"],
    name: "Digital Publishing Skill",
    level: "Seasoned Professional")

let intellectualProperty = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Copyright", "Fair Use", "Creative Commons Licensing", "Clearance", "WordPress", "Wiki", "Trademark"],
    name: "Intellectual Property Skill",
    level: "Professional")

let business = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Accounting", "Memorandum of Understanding", "", "Clearance", "WordPress", "Wiki", "Trademark"],
    name: "Business Skill",
    level: "Professional")


///WORK
let frankfurtIndustries = Resume.Work(
    id: UUID().uuidString,
    summary: "Design, develop, and publish iOS apps for Frankfurt Industries, LLC.",
    name: "Frankfurt Industries",
    department: "Mobile Development",
    position: "iOS Mobile Developer",
    startDate: "February 2021",
    endDate: "Present",
    highlights: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
    url: nil,
    thumbnail: URL(string: "https://frankfurtindustries.neocities.org/images/bg.jpg")!)



//
//let frankfurtIndustries = ResumeItem(
//    name: "Frankfurt Industries",
//    startDate: "February 2021",
//    endDate: "Present",
//    location: "Ann Arbor, MI",
//    job: iosDev,
//    school: nil,
//    video: nil,
//    thumbnail: URL(string: "https://frankfurtindustries.neocities.org/images/bg.jpg")!,
//    overLay: nil,
//    shortDescription: "Lead iOS software development at Frankfurt Industries.",
//    longDescription: nil,
//    list: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
//    categories: ["iOS, SwiftUI, CoreData"],
//    projects: [umSalaryPub])
//
//let iosDev = Job(
//    employerName: "Frankfurt Industries",
//    departmentName: nil,
//    jobTitle: "iOS Software Developer")
//
//let umSalaryPub = Project(
//    name: "UM SalaryPub",
//    thumbnails: nil,
//    videos: nil,
//    link: nil,
//    shortDescription: "An app for searching and comparing salaries",
//    longDescription: "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.",
//    list: ["List of a bunch of things about the project", "Another list of things"],
//    tags: ["iOS, SwiftUI, CoreData, UIKit"])
//
//
//let frankfurtIndustries1 = ResumeItem(
//    id: UUID().uuidString,
//    startDate: "February 2021",
//    endDate: "Present",
//    name: "Frankfurt Industries",
//    thumbnail: URL(string: "https://frankfurtindustries.neocities.org/images/bg.jpg")!,
//    location: "Ann Arbor, MI",
//    companyName: "Frankfurt Industries",
//    departmentName: nil,
//    jobTitle: "iOS Software Developer",
//    schoolName: nil,
//    degreeName: nil,
//    overLay: nil,
//    shortDescription: "Lead iOS software development at Frankfurt Industries.",
//    longDescription: nil,
//    list: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
//    projects: [umSalaryPub],
//    categories: ["iOS, SwiftUI, CoreData"])
//
//let operationsLead = ResumeItem(
//    id: UUID().uuidString,
//    startDate: "January 2017",
//    endDate: "Present",
//    name: "Operation's Lead",
//    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/1899_Michigan_Wolverines_football_team.jpg/640px-1899_Michigan_Wolverines_football_team.jpg")!,
//    location: "Ann Arbor, MI",
//    companyName: "University of Michigan",
//    departmentName: "Center for Academic Innovation",
//    jobTitle: "Operation's Lead",
//    schoolName: nil,
//    degreeName: nil,
//    overLay: nil,
//    shortDescription: "The straw that stirs the drink.",
//    longDescription: "Areas of focus include internal communications, optimizing internal and external collaboration processes, and the development and maintenance of a variety of information processes.",
//    list: ["Work closely with CAI teams to develop and refine the underlying social, technical and process infrastructure required to meet the Center’s growing project and administrative needs.", "Improve project reporting and transparency by co-developing project management bandwidth boards and managing ingest of project portfolio data into Salesforce", "Operationalized cross-team processes for keeping Salesforce up-to-date", "Built and launched new intranet to serve as the Center’s internal platform for policies, guidelines, and HR resources","Co-developed copyright clearance process."],
//    projects: [salesForce],
//    categories: ["Change Management", "Process Management", "Mentorship"])
//
//let projectManager = ResumeItem(
//    id: UUID().uuidString,
//    startDate: "June 2015",
//    endDate: "January 2017",
//    name: "Project Manager",
//    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/AngellHall2010.JPG/640px-AngellHall2010.JPG")!,
//    location: "Ann Arbor, MI",
//    companyName: "University of Michigan",
//    departmentName: "Center for Academic Innovation",
//    jobTitle: "Project Manager",
//    schoolName: nil,
//    degreeName: nil,
//    overLay: nil,
//    shortDescription: nil,
//    longDescription: "Managed the development, production, launch, and maintenance of 22 massive open online courses (MOOCs) and a variety of venture-funded digital education projects.",
//    list: ["Worked closely with faculty, learning experience designers, digital media specialists, and vendor partners throughout all course production processes", "Assembled and published course materials on vendor platforms."],
//    projects: [dataScienceEthics],
//    categories: ["Coursera", "Edx"])
//
//let masterDegree = ResumeItem(
//    id: UUID().uuidString,
//    startDate: nil,
//    endDate: "April 2011",
//    name: "Master of Science in Information",
//    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg/640px-Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg")!,
//    location: "Ann Arbor, MI",
//    companyName: nil,
//    departmentName: nil,
//    jobTitle: nil,
//    schoolName: "University of Michigan",
//    //department
//    degreeName: "Master of Science in Information",
//    //specialization
//    overLay: nil,
//    //GPA
//    shortDescription: nil,
//    longDescription: nil,
//    list: ["Initiated into the Honor Society of Phi Kappa Phi. Membership is by invitation only to the top 10 percent of graduate students at a university"],
//    projects: nil,
//    categories: ["education"])
//
//let pythonForEverybody = Project(
//    id: UUID().uuidString,
//    name: "Python for Everybody Course series",
//    thumbnails: [URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Charles_Severance.jpg/640px-Charles_Severance.jpg")!],
//    videos: nil,
//    link: URL(string: "https://www.coursera.org/specializations/python")!,
//    shortDescription: "One of the most successful series of online courses",
//    longDescription: "This thing made a lot of money, wow!",
//    list: ["The things I did for this course", "wow, i think it was a lot at the time."],
//    tags: ["Coursera", "MOOC", "Project Management"])
//
//let dataScienceEthics = Project(
//    id: UUID().uuidString,
//    name: "Data Science Ethics",
//    thumbnails: [URL(string: "https://upload.wikimedia.org/wikipedia/commons/d/dd/Amdahl_470V-6_computer_at_U_of_M.jpg")!],
//    videos: [URL(string: "https://www.youtube.com/watch?v=xYPSFc7ZL0U")!],
//    link: URL(string: "https://www.edx.org/course/data-science-ethics")!,
//    shortDescription: nil,
//    longDescription: nil,
//    list: nil,
//    tags: ["edx", "ethics", "data science"])
//
//
//let salesForce = Project (
//    id: UUID().uuidString,
//    name: "SalesForce",
//    thumbnails: nil,
//    videos: nil,
//    link: nil,
//    shortDescription: "Bending salesforce to our will.",
//    longDescription: "Salesforce as the insitutional repository of data at the Center of Academic Innovation.",
//    list: ["List of a bunch of things about the project", "Another list of things"],
//    tags: ["SalesForce","CRM", ""])
//
