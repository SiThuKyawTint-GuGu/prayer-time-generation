# Prayer Time Generation

## Setup

Follow these steps to set up the project locally:

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/SiThuKyawTint-GuGu/prayer-time-generator.git
    ```

2. Navigate to the project directory:

    ```bash
    cd prayer-time-generator
    ```

### Configuration

1. **Database Configuration:**

    - Create a database in phpMyAdmin named "prayer".
    - Import the `prayer.sql` file into the "prayer" database.
    - Update the database name, database username, and database password in `db_connect.php` located in the `configs` folder.

### Usage

```bash
php -S localhost:8000
