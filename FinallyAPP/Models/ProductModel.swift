//
//  ProductModel.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import Foundation

enum Category: String , CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case C1 = "Mobile_bank"
    case C2 = "Small_Finance"
    case C3 = "Commercial"
    case C4 = "Specialized"
    case C5 = "Regional"
    case C6 = "Cooperative"
    case C7 = "Discounting"
    case C8 = "Consultancy"
    case C9 = "Shadow_Type"
}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let property: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Product{
    static let all: [Product] =
    [
        Product(name: "Cards",
                image: "https://images.ctfassets.net/e0dxtncuf3fj/7A2sOrjeyA6AA1n7Z2dJIl/9774a3c5e4fc7bac30fa46d27a415d4c/card-nail-paint-illustration.jpg",
                description: "A bank card is a card that is linked to a depository account, including ATM cards and debit cards. Similar to other kinds of cards, bank cards can be used for e-commerce purchases and other kinds of spending, with the amount deducted directly from the account at the time of transaction",
                property: "Choose The Best Cards in Georgia",
                directions: "bank cards can be used for e-commerce purchases and other kinds of spending, with the amount deducted directly from the account at the time of transaction",
                category: "Mobile_bank",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Deposit",
                image: "https://current.com/img/ornamentation/hero-phone.png",
                description: "A deposit is money you put into your bank account. You should deposit money in a bank to create savings and earn interest on it. A demand deposit is made for funds you can withdraw anytime. A time deposit is a long-term investment. A deposit could also be the collateral amount you pay when you take on a loan.",
                property: "Choose The Deposit For You",
                directions: "A demand deposit is made for funds you can withdraw anytime. A time deposit is a long-term investment. A deposit could also be the collateral amount you pay when you take on a loan.",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile bank",
                image: "https://moneyqanda.com/wp-content/uploads/2019/08/current-card-2.png",
                description: "A mobile application or app is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch. Mobile applications often stand in contrast to desktop applications which are designed to run on desktop computers, and web applications which run in mobile web browsers rather than directly on the mobile device.",
                property: "Best Mobile App",
                directions: "Apps were originally intended for productivity assistance such as email, calendar, and contact databases, but the public demand for apps caused rapid expansion into other areas such as mobile games, factory automation, GPS and location-based services, order-tracking, and ticket purchases, so that there are now millions of apps available. Many apps require Internet access. Apps are generally downloaded from app stores, which are a type of digital distribution platforms.",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile Transactions",
                image: "https://assets.website-files.com/61f9b891f832346a0a7b9f9a/6335eedafe71797096678a5e_illustration-appscreenshot.webp",
                description: "Mobile payments is a mode of payment using mobile phones. Instead of using methods like cash, cheque, and credit card, a customer can use a mobile phone to transfer money or to pay for goods and services.",
                property: "Fastes Transactions Here",
                directions: "Buyers hold their mobile device up to the contactless payment terminal. This allows the two devices to communicate with one another over a specific radio frequency. They pass encrypted payment information to complete the transaction. The funds leave your digital wallet and enter the business's point of sale system",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile Payment",
                image: "https://play-lh.googleusercontent.com/A7ZlpCjw9Et_M5-msNefXznWGIqJtfAhlOyRuSPbMajcER_DS-dTW06jurqFihMJ4w=w526-h296-rw",
                description: "Mobile wallet services include apps like Google Pay, Apple Pay, and Samsung Pay. These services run on computers, smartphones, tablets, and smartwatches, and link to a customer's credit card, debit card, or bank account.",
                property: "Mobile Payment Here",
                directions: "Buyers hold their mobile device up to the contactless payment terminal. This allows the two devices to communicate with one another over a specific radio frequency. They pass encrypted payment information to complete the transaction. The funds leave your digital wallet and enter the business's point of sale system.",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Loan",
                image: "https://play-lh.googleusercontent.com/qzULzM05_nKW2j73pgwfT7901x1LFmwx5Qaa0GmmbXy0vF2bddtUtSZU-2y5hfQ4HZ5L=w526-h296-rw",
                description: "A loan is a form of debt incurred by an individual or other entity. The lender—usually a corporation, financial institution, or government—advances a sum of money to the borrower. In return, the borrower agrees to a certain set of terms including any finance charges, interest, repayment date, and other conditions.",
                property: "Best Offers Here",
                directions: "The best way to get a loan immediately is to apply online for a personal loan from a lender known for quick approval and funding. The best lender for fast personal loans is LightStream because it funds loans as soon as the same day and has low APRs, large loan amounts, long payoff periods and no origination fee.",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile bank Invesment",
                image: "https://www.theuxda.com/storage/app/media/thumb/43d/e6e/853/provide-clear-feedback-after-the-payment__3000.jpg",
                description: "A. Investment definition is an asset acquired or invested in to build wealth and save money from the hard earned income or appreciation. Investment meaning is primarily to obtain an additional source of income or gain profit from the investment over a specific period of time.",
                property: "Mobile bank Invesment Here",
                directions: "As a general rule of thumb, you want to aim to invest a total of 10% to 15% of your income each year for retirement. That probably sounds unrealistic now, but you can start small and work your way up to it over time. (Calculate a more specific retirement goal with our retirement calculator.)",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile Bank Transfer",
                image: "https://cdn.dribbble.com/users/2266613/screenshots/5981611/card-dribbble_4x.jpg",
                description: "Mobile banking is a service provided by a bank or other financial institution that allows its customers to conduct financial transactions remotely using a mobile device such as a smartphone or tablet.",
                property: "How to Mobile Bank Transfer",
                directions: "Select the account you want to transfer From and then the account you want to transfer To. Enter the Amount you'd like to transfer. Enter the Date you want the transaction to occur and then tap Continue. Confirm the transaction details, tap Make Transfer and you're done!",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile Bank Bot",
                image: "https://play-lh.googleusercontent.com/3KjDeTE_-TsHEmzgfynWFc8avrkFoR3VUhQLCOLYc6JFuaDmyMmqzaUf2hQO-lGKLwBe=w526-h296-rw",
                description: "BOT Mobile Banking allows you to check balances, transfer funds, deposit checks, view transactions and check messages from anywhere, anytime. It’s fast, free and available to all of our Online Banking users.",
                property: "Mobile Bank Bot",
                directions: "The Bank cooperates with Chunghwa Telecom to provide emome mobile banking services, offering you the most convenient and securest mobile financial services.  The system is supported by the advanced and stable STK (SIM Tool Kit) scheme, which adopts the Triple Data Encryption Standard (DES) for transaction security in addition to the previous encryption standard of the GSM mobile communication.  The protection schemes provided by the Triple DES include check of the phone password, account password and transaction password to ensure the secrecy, completeness and security of the data transmission from the mobile phone to the Bank.  With just a click on the mobile phone screen, your instruction about account transfer, account inquiry, securities transaction and shopping bill payment will be transferred by Short Message Service (SMS) to the Bank to be fulfilled immediately.",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                ),
        Product(name: "Mobile bank security",
                image: "https://play-lh.googleusercontent.com/TjgToz97UjCfwuPC1L_XlUjA_VNFSJ5rR0LocnU2OPlIvshzcgyFo-0fUE5nxvuRaw=w526-h296-rw",
                description: "Banks also keep a close eye on fake applications posing as real ones on the Android platform to ensure that your data does not fall prey to wrong usage and fraud. Mostly, banking applications are tracked based on the volume of transaction and customer behaviour.",
                property: "Mobile bank security",
                directions: "The advantages of mobile banking include 24/7 access to funds, convenient way of paying bills, taxes, and loans. The top disadvantage of mobile banking is potential security risks, tech issues, and extra charges for services.",
                category: "a",
                datePublished: "2023-01-05",
                url: "https://bankofgeorgia.ge/ka/offers-hub/details/2077)"
                )
    ]
    
}

