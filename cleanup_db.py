import os
import psycopg2
from dotenv import load_dotenv

# Load env variables
load_dotenv()

def cleanup_database():
    DATABASE_URL = os.getenv("DATABASE_URL")

    try:
        conn = psycopg2.connect(DATABASE_URL)
        cur = conn.cursor()

        # Drop all tables in correct order
        cleanup_sql = """
        DROP TABLE IF EXISTS
            account_x_customer_rltnp,
            customer_idntfctn,
            customer_details,
            deposit,
            account,
            customer
        CASCADE;
        """

        cur.execute(cleanup_sql)
        conn.commit()
        print("All Tables dropped Successfully!")
    except Exception as e:
        print(f"An error occurred: {e}")
        conn.rollback()
    finally:
        if conn:
            cur.close()
            conn.close()
if __name__ == "__main__":
    cleanup_database()