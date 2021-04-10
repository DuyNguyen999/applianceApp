# Software development plan
## Purpose and scope
### Purpose of the software
Nowadays, with the development of automation and mass production of house hold appliances, the price of these items are getting cheaper and cheaper. However, it can be a problem that we can accidentally purchase something that we already have.
The ApplianceApp is a terminal appliance built by Ruby that helps people organizing their household appliances. User can input their item and then access these items later. It helps to reduce the items people have to remember hence it can save time and improve their productivity.

### Problem and how the software solves it 
The application can solve the problem of tracking items in the house. Sometimes, moving or shopping can be hard if we can recall what we have at home. It can be very useful if there is an application that can list out the number of items we have. 
Getting a work-life balance can be very difficult these days as we have so many tasks to perform every day. The software can solve it by creating a list of items that can be easily stored and accessed later. By creating the CLI app, I have shortened the time of development as well as create quick and easy software to use.
### Target audience
The main target audience of this ApplianceApp are people who love shopping or people who have a lot of appliances. It can be used as a checklist for them before going out shopping or just simply when they want to locate a certain item in the house.
### How the target audience can use it
The app can be run very easy by some basic command lines. Users are only required to have just very little knowledge of the computer to operate it. The target audience can have a copy of the app on Github or a zip file. 
## Feature list
### CRUD
Add: a new item will be initializing by the initialize method in the Appliance class. The new object will have name, made, and room attribute which indicate the name of the appliances, brand of the item and the room it located. The new object then will be add to the  array.
List: display all the item in the item array as long as it is not a "nil" value.
Modify: pick an appliance by its name and edited its attribute as you want. 
Delete: choose an item by name and change value to nil.
### Find item
This feature allows user to find the item they want by input name of the item. If the item exist then the app will notify users, otherwise it will indicate users that the item is not in the house. Chosing search by name is more practical as it is hard for people to remeber item by ID or number, normally people just mention their applicances by name.
### Nice output
ASCII-art is applied to make the app into which increase the user experiance and first impression of the app.
Appling tty-prompt in order to list all the command option and let user choose the command they want. It does not only make the app more professional but also reduce the chance of wrong input which can affect the performance of the app.
TTy-Font is used to increase the choices of font. In this app, TTY-Font made the app intro more attractive to user hence it can make the app more interesting.
Colorize is really helpful as it can add colors to the terminal app. The default of the terminal app is black and white which is boring and hard to define the command line. 
Using TTY-progressbar to make the user more exited about the loading of the app.  

# Flow chart
![Flow chart](./doc/flow-chart.png)
# Project management software
Trello is a very good option to magage the project by creating different cards which allows developers following the project schedule.
![Trello](./doc/trello.png)

# Requirement and Installation
1. Install CLI incase you do not have one. Click here to isntall [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) for window, you can choose other CLI or OS as you like.
2. Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
3. Clone project or download zip file. Link to Github repo: https://github.com/DuyNguyen999/applianceApp
4. Install gems
`gem install bundler`
`bundle install`
`gem install tty-prompt` 
`gem install tty-progressbar` 
`gem install tty-font` 
`gem install colorized` 
5. Run the application
`ruby main.rb`