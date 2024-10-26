# Sql_project

# Library Database Management System

## Overview

This project implements a Library Database Management System designed to efficiently manage and store information about books in a library. The database includes functionalities for creating tables, inserting records, and performing various queries to retrieve and analyze data.

## Database Setup

### 1. Database Creation

To create the library database, use the following SQL commands:

```sql
CREATE DATABASE library;
USE library;
# 2. Table Structure
book_id: Unique identifier for each book (auto-incremented).
title: Title of the book (required).
author: Name of the author.
published_year: Year the book was published.
genre: Genre of the book.
price: Price of the book, formatted to two decimal places.

# Purpose
This project aims to provide a robust framework for managing library book data, facilitating easy access to book information and insights through various SQL queries. The system can be expanded to include additional features such as user management, borrowing history, and more.
