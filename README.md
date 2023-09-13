The Study Helper API is the server-side component of our study management application. It is built using Ruby on Rails, a popular web application framework. This README file provides an overview of the backend application, installation instructions, and usage guide.

Features
1. Activity Management
Create: Students can add new activities to their study plan by providing details such as the activity name, description, due date, and type (Codility challenge, lab, or content work).

Read: Users can view a list of all their activities, sorted by due date or type, allowing them to quickly check their study schedule.

Update: Modify existing activities by editing their details, such as changing the due date or description.

Delete: Remove activities that are no longer relevant or have been completed.

2. Progress Tracking
The app provides a visual representation of the student's study progress through charts and statistics, helping them understand their strengths and weaknesses.

Users can filter activities by type or date range to focus on specific areas of their study plan.

Installation
Follow these steps to set up the Study Helper App - Backend on your local development environment:

Clone the Repository:
git clone https://github.com/Gregg7878/studyhelper_Api1
cd studyhelper_Api1

Install Dependencies:
bundle install

Database Setup:
Set up and configure PostgreSQL. 

Run Migrations:
rails db:migrate

Start the Application:
rails server


Usage
API Endpoints:


Authentication:


Feedback and Contributions
We welcome feedback and contributions from the community to make the Study Helper App even better. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

Happy studying with Study Helper App - Backend! 📚🚀




