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

List All Activities
Endpoint: GET /activities
Description: Get a list of all study activities.
Usage: Retrieve all activities to display on the frontend.

Retrieve a Single Activity
Endpoint: GET /activities/:id
Description: Get details of a specific study activity.
Usage: Fetch the details of a specific activity for viewing or editing.

Create a New Activity
Endpoint: POST /activities
Description: Create a new study activity.
Usage: Add a new activity to the study plan.

Update an Activity
Endpoint: PUT /activities/:id
Description: Update the details of an existing study activity.
Usage: Modify the details of an activity, such as changing the due date or description.

Delete an Activity
Endpoint: DELETE /activities/:id
Description: Delete a study activity.
Usage: Remove an activity that is no longer relevant or has been completed.

Create a New User
Endpoint: POST /users
Description: Register a new user account.
Usage: Allows users to create an account by providing their name, email, age, password, and password confirmation. Upon successful registration, a new user is created, and the user is logged in.

User Login
Endpoint: POST /login
Description: Authenticate a user and generate a session.
Usage: Allows users to log in by providing their email and password. If the provided credentials are valid, the user is logged in, and a session is created.

Authentication 
The Study Helper App includes an authentication mechanism to ensure that only authorized users can access certain parts of the application. The authentication logic is implemented in the ApplicationController:

Authorization Check: Before allowing access to certain actions, the before_action :authorized filter is applied. This filter checks for the presence of a :user_id in the session, which indicates that a user is authenticated and logged in.

Excluded Actions: Some actions, such as login, show, index, and create, are exempt from the authorization check using except: [:login, :show, :index, :create]. This means that these actions can be accessed without requiring authentication.

Unauthorized Access Handling: If a user is not authorized (i.e., session[:user_id] is not present), the API will return a JSON response with an "Unauthorized" error message and a status code of 401 (HTTP status code for unauthorized access).


Feedback and Contributions
We welcome feedback and contributions from the community to make the Study Helper App even better. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

Happy studying with Study Helper App - Backend! 📚🚀


Frontend: https://github.com/code-day-254/phase-4-group-frontend

