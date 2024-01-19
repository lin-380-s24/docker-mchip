# Dockerfile: Alternate image for Linguistcs 380

# Pull base image
FROM rocker/rstudio:latest

# Allow root user
ENV ROOT=true

# Enable Copilot
RUN echo "copilot-enabled=1" >> /etc/rstudio/rsession.conf

# Copy/ permissions RStudio prefs
COPY rstudio-prefs.json /home/rstudio/.config/rstudio/rstudio-prefs.json
RUN chown rstudio:rstudio /home/rstudio/.config/rstudio/rstudio-prefs.json

# Copy/ permissions Lessons/ directory
COPY Lessons /home/rstudio/Lessons
RUN chown -R rstudio:rstudio /home/rstudio/Lessons

# Copy/ permissions install_packages.R
COPY install_packages.R /home/rstudio/install_packages.R
RUN chown rstudio:rstudio /home/rstudio/install_packages.R
