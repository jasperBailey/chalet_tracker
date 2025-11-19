# Database Design Doc

This is the central document for the database structure and design.
Any changes to the database structure should be written here first,
to keep a consistent versioned file of all changes.

## MVP Tables

For the MVP, the only necessary table is the user table. 
Below is the data dictionary for the user table

| Table | Column           | Type     | Description                                 | Constraints        | Example                            |
|-------|------------------|----------|---------------------------------------------|--------------------|------------------------------------|
| users | id               | INT      | Unique identifier for each user             | PK, AUTO-INCREMENT | `1`                                |
| users | email            | VARCHAR  | User email address                          | Unique, Not Null   | `test@madetech.com`                |
| users | active           | BOOLEAN  | Variable to check if the user in the chalet | Unique, Not Null   | `True`                             |
| users | project          | VARCHAR  | User's current project or learning          | Not Null           | `AWS Cloud Practinoer certificate` |
| users | date_joined      | DATE     | When user joined the Chalet                 | Not Null           | `2025-30-10`                       |
| users | date_created     | DATETIME | When user was created in the tracker        | Not Null           | `2007-04-30 13:10:02`              |
| users | date_deactivated | DATETIME | When user was left the tracker              |                    | `2007-04-30 13:10:02`              |

Note: when someone rejoins the tracker they should use their old entry but overwrite the `date_joined`, `active` and `date_deactived` field