import os
import psycopg2
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

def create_and_populate_db():
    DATABASE_URL = os.getenv("DATABASE_URL")
    
    try:
        conn = psycopg2.connect(DATABASE_URL)
        cur = conn.cursor()
        
        # Read the SQL file
        with open('AskDB_Create_Tables.sql', 'r') as file:
            sql_commands = file.read()
            
        # Execute the SQL commands
        cur.execute(sql_commands)
        conn.commit()
        print("Database created and populated successfully!")
        
    except Exception as e:
        print(f"An error occurred: {e}")
        conn.rollback()
    finally:
        if conn:
            cur.close()
            conn.close()

if __name__ == "__main__":
    create_and_populate_db() 