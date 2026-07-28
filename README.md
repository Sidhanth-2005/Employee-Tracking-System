# \# Employee Management System (Django + React + Docker)

# 

# A full-stack CRUD application for managing employee records, built with 

# Django REST Framework (backend) and React (frontend), fully containerized 

# with Docker for consistent, portable deployment.

# 

# \## Features

# \- User authentication using JWT (JSON Web Tokens)

# \- Create, Read, Update, and Delete employee records

# \- Read (list) access is available to all users; Create/Update/Delete 

# &#x20; require authentication

# \- Client-side form validation (required fields, email format, phone number format)

# \- Fully containerized with Docker — backend and frontend run as separate 

# &#x20; services orchestrated via Docker Compose

# 

# \## Tech Stack

# \*\*Backend:\*\* Python, Django, Django REST Framework, djangorestframework-jwt, SQLite  

# \*\*Frontend:\*\* React, Bootstrap, Reactstrap  

# \*\*DevOps:\*\* Docker, Docker Compose

# 

\## Project Structure

├── django\_react\_proj/ # Django backend (models, serializers, views, urls)
===

# ├── front-end/ # React frontend

# ├── Dockerfile # Backend container config

# ├── front-end/Dockerfile # Frontend container config

# ├── docker-compose.yml # Orchestrates both containers together

└── requirements.txt # Python dependencies

## Running with Docker (recommended)
===

# 

# \*\*Prerequisites:\*\* Docker Desktop installed and running

# 

# ```bash

# git clone https://github.com/yourusername/your-repo-name.git

# cd your-repo-name

# docker-compose up --build

# ```

# 

# \- Backend available at: http://localhost:8000  

# \- Frontend available at: http://localhost:3000

# 

# \## Running locally without Docker

# 

# \*\*Backend:\*\*

# ```bash

# python -m venv venv

# venv\\Scripts\\activate        # Windows

# pip install -r requirements.txt

# cd django\_react\_proj

# python manage.py migrate

# python manage.py createsuperuser

# python manage.py runserver

# ```

# 

# \*\*Frontend:\*\*

# ```bash

# cd front-end

# npm install

# npm start

# ```

# 

# \## API Endpoints

# | Method | Endpoint | Auth Required | Description |

# |--------|----------|---------------|-------------|

# | POST | /token-auth/ | No | Login, returns JWT token |

# | GET | /api/employees/ | Yes | List all employees |

# | POST | /api/employees/ | Yes | Create new employee |

# | GET | /api/employees/<id>/ | Yes | Get single employee |

# | PUT | /api/employees/<id>/ | Yes | Update employee |

# | DELETE | /api/employees/<id>/ | Yes | Delete employee |

# 

# \## Future Improvements

# \- Deploy backend to AWS (EC2/RDS) and frontend to S3/CloudFront

# \- Add CI/CD pipeline using GitHub Actions for automated build and deployment

# \- Switch frontend production build to be served via Nginx (multi-stage Docker build)

# \- Add Sign Up functionality for new users

# 

