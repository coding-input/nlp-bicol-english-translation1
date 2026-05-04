# NLP-Based Bicol–English Translation System for the EIE Program

## Project Description

This system is designed to support the **University of Nueva Caceres (UNC) English Immersive Environment (EIE)** program. It utilizes **Natural Language Processing (NLP)** to bridge the linguistic gap between Bicol and English, helping students and faculty transition more effectively into an English-speaking environment while preserving local linguistic nuances.

The system provides real-time translation capabilities between Bicol and English, leveraging a rule-based linguistic mapping approach backed by a curated linguistic corpus stored in PostgreSQL.

---

## Tech Stack

| Layer            | Technology                                         |
| ---------------- | -------------------------------------------------- |
| **Frontend**     | React.js (User Interface & Real-time Translation Display) |
| **Backend**      | Node.js with Express (API & Translation Logic Integration) |
| **Database**     | PostgreSQL (Linguistic Corpus & Translation Pairs)  |
| **NLP Processing** | Rule-based linguistic mapping implemented via Node.js logic |

---

## Installation Guide

### Prerequisites

- [Node.js](https://nodejs.org/) (v18 or later)
- [PostgreSQL](https://www.postgresql.org/) (v14 or later)
- [npm](https://www.npmjs.com/) (comes with Node.js)
- [Git](https://git-scm.com/)

### Steps

1. **Clone the repository:**

   ```bash
   git clone https://github.com/coding-input/nlp-bicol-english-translation1.git
   cd nlp-bicol-english-translation1
   ```

2. **Setup Database:**

   - Install PostgreSQL and create a database named `nlp_bicol_translation`:

     ```sql
     CREATE DATABASE nlp_bicol_translation;
     ```

   - Run the migration scripts:

     ```bash
     psql -U your_username -d nlp_bicol_translation -f db/schema.sql
     ```

3. **Install Backend Dependencies:**

   ```bash
   cd server
   npm install
   ```

4. **Install Frontend Dependencies:**

   ```bash
   cd ../client
   npm install
   ```

5. **Configure Environment Variables:**

   Create a `.env` file in the `/server` directory with the following:

   ```env
   PORT=5000
   DB_URL=postgres://user:password@localhost:5432/nlp_bicol_translation
   ```

6. **Run the System:**

   - **Start the Server:**

     ```bash
     cd server
     npm start
     ```

   - **Start the Client** (in a new terminal):

     ```bash
     cd client
     npm start
     ```

   The client will run on `http://localhost:3000` and the server on `http://localhost:5000`.

---

## Project Structure

```
nlp-bicol-english-translation/
├── client/             # React.js frontend application
│   ├── public/
│   ├── src/
│   └── package.json
├── server/             # Node.js/Express backend API
│   ├── src/
│   └── package.json
├── db/                 # Database schema and migration scripts
│   └── schema.sql
├── .gitignore
├── LICENSE
└── README.md
```

---

## Contributors

| Name                     | Role                                   |
| ------------------------ | -------------------------------------- |
| **Jonas Joshua Marinay** | Project Manager / NLP Integration      |
| **Zarina Lee Develos**   | Backend Developer / Database Architect |
| **Honey Faye Ganalon**   | Frontend Developer / UI/UX Designer    |

---

## License

This project is licensed under the [MIT License](LICENSE).
