# Voting Application - Multi-Container Docker Project

## Project Overview
- Full-stack voting application demonstrating Docker Compose orchestration with 5 microservices.

**Live Demo:**
- Vote Interface: http://localhost:5000
- Results Dashboard: http://localhost:5001

## Architecture

### Services:
1. **vote** (Python Flask)
   - Port: 5000
   - Purpose: Frontend voting interface
   
2. **result** (Node.js)
   - Port: 5001
   - Purpose: Real-time results display
   
3. **worker** (.NET)
   - Purpose: Process votes from Redis to PostgreSQL
   
4. **redis** (Redis Alpine)
   - Purpose: Message queue for votes
   
5. **db** (PostgreSQL 15)
   - Purpose: Persistent vote storage

### Data Flow:
