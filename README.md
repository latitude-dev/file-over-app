# File-over-app Directory

> If you want to create digital artifacts that last, they must be files you can control, in formats that are easy to retrieve and read. Use tools that give you this freedom.
>
> — Steph Ango, [File over app](https://stephango.com/file-over-app)

## Contributing

If you want to add a missing tool or correct a mistake, please open a pull request. If you want to discuss something else, you can open an issue.

### Adding a tool

To add a tool, simply edit the `products.csv` file you'll find within the `queries` directory. The file is a CSV file with the following columns:

- `name` - The name of the tool.
- `description` - A brief description of the tool.
- `extensions` - The file extensions the tool supports.
- `category` - The category the tool belongs to.
- `url` - The URL to the tool's website.
- `open_source` - Whether the tool is open source or not.

Submit a pull request with your changes, and we'll review it as soon as possible.

## Developing

To start developing in this project, first ensure you have Node.js >= 18 installed. Then, install the Latitude CLI:

```
npm install -g @latitude-data/cli
```

After cloning the repository, run the following command to spin up the dev server:

```
latitude dev
```

This will start the server in development mode, and you can access the application at `http://localhost:3000`.

## Project Structure

The project is structured as follows:

`queries` - This directory contains the SQL files that define the queries used to fetch data from the database.

`views` - This directory contains the HTML files that define the layout and interface of the application.

Additionally you'll find a `sources.yml` file in the queries directory. This file defines the data sources that the project uses. By default, it's set to use the DuckDB adapter to let you add CSV files as data sources. You can change this to use other adapters.

## Documentation

To find more about how to use Latitude, refer to the [documentation](https://docs.latitude.so).
