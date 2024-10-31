This repository contains solutions for an SQL test task designed to demonstrate SQL querying skills. The project includes a PostgreSQL database schema with sample data, and a series of SQL queries that perform specific tasks on two tables: `TD` (Transaction Data) and `Email`.

## Project Structure

- **`queries.sql`**: Contains SQL queries for each task in the test assignment, including comments that explain each query's purpose and logic.
- **`results/`**: Folder with output files from each SQL query, demonstrating the expected results.
- **`README.md`**: Documentation file (this file) that provides an overview of the project, setup instructions, and additional notes.

## Database Schema

The database includes two tables:

### Table: `TD`

| Column            | Type          | Description                                  |
|-------------------|---------------|----------------------------------------------|
| `contract_number` | `VARCHAR(50)` | Contract number for the transaction          |
| `td_code`         | `INT`         | Unique transaction identifier                |
| `service`         | `VARCHAR(50)` | Type of service provided                     |
| `deleted`         | `BOOLEAN`     | Indicates if the service was deleted         |
| `package_reference` | `INT`       | Reference to a package (if applicable)       |

### Table: `Email`

| Column            | Type          | Description                                  |
|-------------------|---------------|----------------------------------------------|
| `contract_number` | `VARCHAR(50)` | Contract number associated with the email    |
| `email`           | `VARCHAR(255)`| Email address of the client                  |

## Setup Instructions

1. **Create the Database and Tables**:
   - Run the SQL commands in `schema.sql` to create the tables and populate them with test data.
   
2. **Run SQL Queries**:
   - Open the `queries.sql` file and run each query in a PostgreSQL query tool or terminal to view the results.

3. **Expected Output**:
   - The output files in the `results/` folder provide examples of the results you should expect for each query.

## SQL Tasks

1. **Unique Contract Numbers**:
   - Retrieve all unique `contract_number` values from the `TD` table.

2. **Equipment Only**:
   - Display only rows with `service` marked as "Equipment" from the `TD` table.

3. **Package Transactions**:
   - Retrieve all transactions that are part of a package, formatted as `contract_number`, `package_td_code`, `td_code`, `service`.

4. **TD Table with Email**:
   - Display all entries from the `TD` table along with the client's `email` from the `Email` table.

5. **No Email Clients**:
   - Display only those clients from the `TD` table who do not have an associated `email` in the `Email` table.

6. **Active Services**:
   - Display active services for each contract in the format: `contract_number`, array of `td_code`, array of `services`.

7. **Temporary Table Creation**:
   - Brief description on how to create temporary tables in PostgreSQL for complex queries or intermediate data storage.

8. **Common Table Expressions (CTEs)**:
   - Example query demonstrating the use of CTEs for more complex querying requirements.

## Notes

- This project is part of a test task for a Full-stack developer role.
- All SQL code is written to be modular, commented, and easy to follow.
- Estimated time to complete the project: ~4 hours.

## License

This project is for demonstration purposes and does not include a specific license.
 
