FROM python:3.12.4-slim-bookworm
LABEL maintainer="Babak Hosseini <bbkhosseini@gmail.com>"
LABEL version="0.1"
LABEL description="Notebook and data (.xlsx file) to provide an analysis of \
        the data science task and the regression model for the prediction of \
        different material strengths."

RUN mkdir src 

WORKDIR src/

COPY requirements_task.txt DS_task_final.ipynb .

ADD /data/. /src/data

RUN pip3 install -r requirements_task.txt
  
EXPOSE 8888

CMD ["jupyter","notebook","--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
