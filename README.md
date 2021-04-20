# Money Management App

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
This app allows users to manage their spending and facilitate goals to save money. Also, it enables users to control their spending habits.
### Description
Users will insert expenses and deposits, as well as their category, and it will add it to the appropiate column to show users their spending habits.

### App Evaluation
- **Category:** Money Management / Finance
- **Mobile:** Its a view and input app, it does have a scroll feature, and it's mainly used to help people to manage their budget and spend smartly.
- **Story:** Allows users to input their budget and their expenses. The user can create catagories of their choice and manage their budget and help with their spending habits
- **Market:** User can manage their budget by using the app and also make good spending habits. The user can add multiple category  and use each of them to see how much is he/she spending, and at which category 
- **Habit:** Users use this app on a everyday basis in order to track their expenses and deposits and create a manageable budget.
- **Scope:** V1 will track just purely expenses and deposits, V2 will show areas where you are spending the most money and remind you to spend less.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can log in.
* User can create a new account.
* User can log out.
* User can input an expense.
* User can input a deposit.
* User can categorize expenses.
* User can create a budget.
* User can see how much they've spent and earned.

**Optional Nice-to-have Stories**

* User can create new catagories.
* User will receive a warning if they are spending too much.
* User will receive tips and articles on how to save money.
* User will either receieve a reminder to input expenses or expenses will be automatically retrieved and categorized from the user's bank.

### 2. Screen Archetypes

* Login Screen
   * User can log in.
* Registration Screen
   * User can create a new account.
* Home Screen
    * User can create a budget.
    * User can create new catagories.
    * User can see how much they've spent and earned.
    * User can logout.
* Creation Screen
    * User can input an expense.
    * User can input a deposit.
    * User can categorize expenses.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Screen
* Creation Screen

**Flow Navigation** (Screen to Screen)

* Login Screen
   * Home Screen
* Registration Screen
   * Home Screen
* Home Screen
   * Creation Screen
* Creation Screen
   * Home Screen
* Home Screen
    * Login Screen


## Wireframes
![](https://i.imgur.com/ZIkSohZ.png)


## Schema 
### Models
| Property        | Type     | Description |
| -------------   | -------- | ------------|
| username        | String   | unique id for the user |
| password        | String   | unique log-in information for the user |
| budget          | Number   | value user wants to stay below |
| expensePrice    | Number   | how much the user spent |
| depositPrice    | Number   | how much the user deposited |
| expenseCategory | String   | type of expense the user selected |
| depositCategory | String   | type of deposit the user selected |
| createdAt| DateTime | time the user inputted the deposit/expense

### Networking
- Login/Registration Screen
    - (Read/GET) Query logged in user object
- Home Screen
    - (Read/GET) Query all depositPrice
    - (Read/GET) Query all expensecategory
    - (Read/GET) Query all depositCategory
    - (Read/GET) Query the budget
    - (Update/PUT) Update the current budget
    - (Read/GET) Query all expensePrice
```swift
let query = PFQuery(className:"expensePrice")
query.order(byDescending: "createdAt")
query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
   if let error = error { 
      print(error.localizedDescription)
   } else if let expenses = expenses {
      print("Successfully retrieved \(expenses.count) posts.")
   }
}
```
- Creation Screen
    - (Create/POST) Create a new budget
    - (Create/POST) Create a new expensePrice
    - (Create/POST) Create a new depositPrice
    - (Create/POST) Create a new expenseCategory
    - (Create/POST) Create a new depositCategory
