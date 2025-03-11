import os
from datetime import datetime, timedelta

def make_commit(date):
    with open("dummy.txt", "a") as file:
        file.write(f"Commit on {date}\n")
    os.system("git add .")
    os.system(f'git commit --date="{date}" -m "Auto commit on {date}"')

# Adjust the start date (e.g., commits for the last 30 days)
start_date = datetime.now() - timedelta(days=30)
for day in range(30):  # 30 days of commits
    commit_date = start_date + timedelta(days=day)
    make_commit(commit_date.strftime("%Y-%m-%d %H:%M:%S"))

# Push to GitHub (make sure you have permissions)
os.system("git push origin main --force")  # Use --force carefully!