# Geomapper

## 📍 Description
Interactive web application to visualize the geographical distribution of Amenitiz clients and prospects. Built with Leaflet.js, TailwindCSS, and modular JavaScript.

## 🚀 Features

### 🗺️ Visualization
- Interactive map with Leaflet.js
- Smart marker clustering (Leaflet.markercluster)
- Green markers for clients, orange for prospects
- Informative popups for each location
- Responsive and modern UI (TailwindCSS)

### 🔍 Filters
- **Country**: Searchable dropdown (with autocomplete and clear button)
- **Region**: Dynamically updates based on selected country
- **Property Type**: Multi-select dropdown (checkboxes, select all, clear, scrollable)
- **Client Status**: Clients vs Prospects
- **Health Score**: Healthy, Neutral, At-Risk
- **Number of Rooms**: By size range

### 🔎 Search
- Search by Record ID or Company Name
- Map centers and zooms to the found record
- Filters are temporarily overridden for search, then restored

### 🛡️ Robust Data Handling
- Loads data from a CSV file (`coordinates-adjustment-sp.csv`)
- Handles large datasets efficiently (tested with 250k+ records)
- Robust CSV parsing (PapaParse)
- Case-insensitive and space-insensitive column access
- Skips invalid or incomplete records

### 💬 User Experience
- Loading and error/success messages
- All filters and search are debounced for performance
- Dropdowns and checkboxes styled for clarity and accessibility
- Fully responsive for desktop and mobile

## 📁 Project Structure

```
Geomapper/
├── mapa_clientes.html      # Main application
├── coordinates-adjustment.csv  # Geographical data
├── start_server.sh         # Quick start script
└── README.md              # Documentation
```

## 🛠️ Technologies Used
- **Frontend**: HTML5, CSS3, JavaScript ES6+
- **Maps**: Leaflet.js + Leaflet.MarkerCluster
- **Styling**: TailwindCSS (CDN)
- **Data**: PapaParse for CSV processing
- **Architecture**: Modular JavaScript (AppState, MapManager, FilterManager, etc.)

## 🚀 Getting Started

### Requirements
- Local HTTP server (Python, Node.js, etc.)
- Modern web browser

### Quick Start
1. **Go to the project directory**
   ```bash
   cd /Users/juansebastiansuarez/scraping/Geomapper
   ```
2. **Start the server**
   ```bash
   ./start_server.sh
   # or manually:
   python3 -m http.server 8000
   ```
3. **Open in your browser**
   ```
   http://localhost:8000/mapa_clientes.html
   ```

## 📊 Data Format
The CSV file must contain the following columns:

| Column | Description |
|--------|-------------|
| `Latitude` | Geographical latitude |
| `Longitude` | Geographical longitude |
| `Company name` | Company name |
| `Record ID` | Unique record ID |
| `Region` | Geographical region |
| `Country` | Country |
| `Property type` | Property type (multi-select filter) |
| `Amenitiz Hotel Id Unique` | Client status |
| `Health Score status` | Satisfaction status |
| `Number of rooms` | Number of rooms |

## 🏗️ Code Architecture
- **CONFIG**: Centralized configuration
- **AppState**: Global state management
- **Utils**: Utility functions
- **MapManager**: Map and cluster management
- **MarkerManager**: Marker creation and popups
- **FilterManager**: Filtering logic and UI
- **SearchManager**: Search and navigation
- **DataManager**: Data loading and filter population

## 🎨 Customization
- **Marker Colors**: Green (clients), Orange (prospects), Cluster color by ratio
- **Filters**: Add new filters by updating HTML and FilterManager
- **Styling**: Uses TailwindCSS for easy customization

## 📝 Changelog

### v2.1.0 (Current)
- Multi-select Property Type filter (checkbox dropdown)
- Dynamic Region filter based on Country
- All filters and search debounced for performance
- Modular, maintainable codebase
- Improved UI/UX and accessibility

### v2.0.0
- Complete refactor to modular architecture
- All main filters and search
- Robust CSV parsing and error handling

### v1.0.0
- Basic map and marker visualization
- Initial filter and search features

## 📄 License
Internal project - Exclusive use for client and prospect data analysis.

