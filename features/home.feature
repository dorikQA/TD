Feature: Redirection
  Background:
    Given Open "https://www.tdameritrade.com" site

  Scenario: Collect all links from home and print name of each displayed link
    Then Collect all links and print links titles



  Scenario Outline: Verify that user was redirected on correct page
    Then Verify when user click on link "<link_name>" he redirects to the correct page "<req_page_title>"
    
    Examples:
      | link_name           | req_page_title                   |
      | Account Types       | Investment Account Types         |

      | Funding & Transfers | Electronic Funding and Transfers |

      | Open New Account    | Open Your Account                |

      | Need Login Help?    | Log on Help                      |

      | Service             | Investor Services                |
#
#  Account Types
#
#  Funding & Transfers
#
#  Open New Account
#
#  Need Login Help?
#
#  TD Ameritrade
#
#  Service
#
#  Tools & Platforms
#
#  Investment Products
#
#  Pricing
#
#  Retirement
#
#  Education
#
#  Research
#
#  Open new account
#
#  Why TD Ameritrade
#
#  Compare now
#
#  Learn more
#
#  Products
#
#  Education
#
#  Tools
#
#  Pricing
#
#  Research
#
#  Value
#
#  Support
#
#  Trade
#
#  Open new account
#
#
#
#  Open New Account
#
#  twitter-footer
#
#  facebook-footer
#
#  youtube-footer
#
#  Client Log-In
#
#  Open New Account
#
#  Why TD Ameritrade?
#
#  Pricing
#
#  Account Types
#
#  About Us
#
#  The Ticker Tape
#
#  Retirement Planning
#
#  Rollover IRA
#
#  IRA Guide
#
#  IRA Selection Tool
#
#  Managed Portfolios
#
#  Income Solutions
#
#  Investment Guidance
#
#  Tools & Platforms
#
#  thinkorswim
#
#  Web Platform
#
#  Mobile Trading
#
#  Options
#
#  Futures
#
#  For Active Traders
#
#  Call Us
#
#  Email Us
#
#  Find a Branch
#
#  Funding & Transfers
#
#  FAQs
#
#  Form Library
#
#  Feedback
#
#  Careers
#
#  Search Jobs
#
#  Minimum Requirements
#
#  Disclosures
#
#  Privacy
#
#  Financial Statement
#
#  Newsroom
#
#  Site Map
#
#  Security
#
#  TD Ameritrade Institutional
#
#  TD Ameritrade Holding Corp.