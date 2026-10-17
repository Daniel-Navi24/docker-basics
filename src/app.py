import os
import random
from faker import Faker

app_env = os.getenv("APP_ENV", "development")
fake = Faker()

print(f"=== STARTING APP IN {app_env.upper()} MODE ===")
print(f"Interesting output: {fake.catch_phrase()}")
print(f"Random number: {random.randint(1, 100)}")

if __name__ == "__main__":
    print("App finished running successfully.")
