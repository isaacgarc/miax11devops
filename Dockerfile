FROM public.ecr.aws/lambda/python:3.11

COPY app.py ${LAMBDA_TASK_ROOT}
# set the working directory in the container

# copy the dependencies file to the working directory
COPY requirements.txt .
# install dependencies
RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}" 
# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile) 
CMD [ "app.handler" ] 