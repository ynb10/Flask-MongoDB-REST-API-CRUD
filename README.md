# Flask MongoDB REST API CRUD

This is a simple CRUD (Create, Read, Update, Delete) API built with Flask and MongoDB. It provides endpoints to interact with a MongoDB database to manage user records.

## Prerequisites

Before you can run this application, ensure you have the following prerequisites installed:

- Python 3.8 or higher
- Docker
- Docker Compose

## Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/ynb10/Flask-MongoDB-REST-API-CRUD
   ```

2. Change to the project directory:

   ```bash
   cd internship
   ```

3. Create a virtual environment named `myenv`:

   ```bash
   python -m venv myenv
   ```

4. Activate the virtual environment:

   - On Windows:

     ```bash
     myenv\Scripts\activate
     ```

   - On macOS and Linux:

     ```bash
     source myenv/bin/activate
     ```

5. Install project dependencies within the virtual environment:

   ```bash
   pip install -r requirements.txt
   ```
6. Build the Docker containers:

   ```bash
   docker-compose build
   ```

7. Start the Docker containers:

   ```bash
   docker-compose up
   ```
The Flask application will be accessible at `http://localhost:5000`, and MongoDB will be running on `http://localhost:27017`.

## API Endpoints

### 1. Add a User

- **Endpoint**: `/add`
- **HTTP Method**: POST
- **Request Body**:

   ```json
   {
       "name": "John Doe",
       "email": "johndoe@example.com",
       "pwd": "password"
   }
   ```

- **Description**: Adds a new user to the database.

### 2. Get All Users

- **Endpoint**: `/users`
- **HTTP Method**: GET
- **Description**: Retrieves a list of all users from the database.

### 3. Get a User by ID

- **Endpoint**: `/users/<id>`
- **HTTP Method**: GET
- **Description**: Retrieves a user by their unique ID.

### 4. Update a User

- **Endpoint**: `/update/<id>`
- **HTTP Method**: PUT
- **Request Body**:

   ```json
   {
       "name": "Updated Name",
       "email": "updated@example.com",
       "pwd": "newpassword"
   }
   ```

- **Description**: Updates an existing user's information.

### 5. Delete a User

- **Endpoint**: `/delete/<id>`
- **HTTP Method**: DELETE
- **Description**: Deletes a user from the database by their unique ID.

## Environment Variables

- `MONGO_URI`: MongoDB connection URI. By default, it's set to `"mongodb://localhost:27017/intern"` in the `docker-compose.yml` file.

## Usage

You can use a tool like [Postman](https://www.postman.com/) to interact with the API endpoints mentioned above.

## Acknowledgments

- Flask
- PyMongo
- Docker
- MongoDB
