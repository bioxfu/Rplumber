# Version: 0.0.1
FROM trestletech/plumber
MAINTAINER bio.xfu@gmail.com

RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('dbplyr')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('RSQLite')"

CMD ["/app/plumber.R"]
