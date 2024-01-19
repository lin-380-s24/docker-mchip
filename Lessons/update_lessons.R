# Script to update the swirl lessons
# for the course

# Uninstall the course
swirl::uninstall_course("Lessons")

# Install the course
swirl::install_course_github("qtalr", "Lessons", "main")
