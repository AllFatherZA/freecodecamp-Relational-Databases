# Universe Database Project

A comprehensive astronomical database system implemented in PostgreSQL, demonstrating relational database design principles with a celestial hierarchy.

## 🌌 Database Schema

The database models astronomical entities in a hierarchical structure:
```
Galaxy → Star → Planet → Moon
```

### **Core Tables**

| Table | Description | Columns |
|-------|-------------|---------|
| `galaxy` | Major galaxies in the universe | `galaxy_id`, `name`, `weight`, `age`, `description`, `has_life` |
| `star` | Stars within galaxies | `star_id`, `name`, `weight`, `age`, `description`, `is_pulsar`, `galaxy_id` |
| `planet` | Planets orbiting stars | `planet_id`, `name`, `has_life`, `weight`, `age`, `star_id` |
| `moon` | Moons orbiting planets | `moon_id`, `name`, `has_rings`, `age`, `weight`, `description`, `planet_id` |
| `asteroid` | Celestial asteroids | `asteroid_id`, `name`, `mass` |

## 🚀 Features

- **Relational Design**: Proper foreign key relationships maintain referential integrity
- **Constraints**: Unique names and primary keys ensure data consistency
- **Sample Data**: Pre-populated with realistic astronomical entities
- **Auto-incrementing IDs**: Sequential primary keys for all entities
- **Normalized Structure**: Efficient data organization with minimal redundancy

## 📊 Sample Data

### **Galaxies (6 entries)**
- Milky Way, Andromeda, Triangulum, Large Magellanic Cloud, Sombrero, Whirlpool

### **Stars (6 entries)**
- Various stars including Alpha Centauri variations

### **Planets (17 entries)**
- Planets 1-17 with basic attributes

### **Moons (20+ entries)**
- Moons associated with different planets

### **Asteroids (5 entries)**
- Basic asteroid data

## 🛠️ Technical Details

- **Database**: PostgreSQL 12.22
- **Encoding**: UTF8
- **Locale**: C.UTF-8
- **Owner**: freecodecamp
- **Dump Tool**: pg_dump version 12.22

## 📁 Database Structure

```sql
-- Key relationships
galaxy (1) → (many) star
star (1) → (many) planet  
planet (1) → (many) moon
```

## 🔧 Installation & Usage

### **Restore Database**
```bash
# Create the database
createdb universe

# Restore from dump
psql universe < universe_dump.sql
```

### **Connect to Database**
```bash
psql -U freecodecamp -d universe
```

### **Example Queries**

```sql
-- List all galaxies
SELECT * FROM galaxy;

-- Find stars in the Milky Way
SELECT s.name, s.age, s.weight 
FROM star s
JOIN galaxy g ON s.galaxy_id = g.galaxy_id
WHERE g.name = 'Milky Way';

-- Count moons per planet
SELECT p.name, COUNT(m.moon_id) as moon_count
FROM planet p
LEFT JOIN moon m ON p.planet_id = m.planet_id
GROUP BY p.planet_id
ORDER BY moon_count DESC;
```

## 🔗 Foreign Key Constraints

- `star.galaxy_id` → `galaxy.galaxy_id`
- `planet.star_id` → `star.star_id`
- `moon.planet_id` → `planet.planet_id`

## 🎯 Learning Objectives

This project demonstrates:
1. **Database Design**: Creating normalized table structures
2. **Relationships**: Implementing one-to-many relationships
3. **Constraints**: Using primary keys, foreign keys, and unique constraints
4. **Data Integrity**: Maintaining referential integrity
5. **SQL Skills**: Querying hierarchical data with JOIN operations

## 📝 Project Context

This database was created as part of a learning journey covering:
- Linux/Bash command line operations
- PostgreSQL database management
- SQL query language
- Git version control
- VS Code development environment

## 📄 License

Educational project - Free to use for learning purposes

---

*Created with PostgreSQL 12.22 | Dumped with pg_dump | Part of database learning curriculum*
