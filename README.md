# IMAA POS PlayLand
## Overview
IMAA POS PlayLand is a comprehensive Point of Sale (POS) system built with Laravel. It supports multi-tenancy, inventory management, accounting, reporting, and more, making it suitable for retail and service businesses.

## Features
- Multi-tenant architecture
- Inventory and warehouse management
- Purchase and sales modules
- Expense tracking and accounting
- User roles and permissions
- SMS and email notifications
- Reporting (sales, stock, accounts, etc.)
- Customizable settings and templates
- Multi-language support
## Project Structure
- app/ : Core application logic (Controllers, Models, Services, etc.)
- config/ : Configuration files
- database/ : Migrations, seeders, and SQL dumps
- public/ : Public assets (CSS, JS, images)
- resources/ : Blade views, frontend assets
- routes/ : Route definitions (web, API, console, etc.)
- storage/ : File storage, logs, cache
## Installation
1. Clone the repository:
   ```
   git clone <your-repo-url>
   ```
2. Install dependencies:
   ```
   composer install
   npm install && npm run dev
   ```
3. Copy and configure environment:
   ```
   cp .env.example .env
   php artisan key:generate
   # Edit .env with your database 
   and mail settings
   ```
4. Run migrations and seeders:
   ```
   php artisan migrate --seed
   ```
5. Set permissions (if needed):
   - Ensure storage/ and bootstrap/cache/ are writable.
6. Start the server:
   ```
   php artisan serve
   ```
## Usage
- Access the application at http://localhost:8000 after starting the server.
- Default login credentials may be set by the seeder (check database/seeders/AdminSeeder.php ).
## Customization
- Update company info, branding, and settings via the admin panel.
- Add or modify users, roles, and permissions as needed.
- Configure SMS and email templates in the settings section.
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed. See the LICENSE file for details.
