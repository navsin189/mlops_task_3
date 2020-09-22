# mlops_task_3
1. Create container image that’s has Python3 and Keras or numpy  installed  using dockerfile 

2. When we launch this image, it should automatically starts train the model in the container.

3. Create a job chain of job1, job2, job3, job4 and job5 using build pipeline plugin in Jenkins 

4.  Job1 : Pull  the Github repo automatically when some developers push repo to Github.

5.  Job2 : By looking at the code or program file, Jenkins should automatically start the respective machine learning software installed interpreter install image container to deploy code  and start training( eg. If code uses CNN, then Jenkins should start the container that has already installed all the softwares required for the cnn processing).

6. Job3 : Train your model and predict accuracy or metrics.

7. Job4 : if metrics accuracy is less than 80%  , then tweak the machine learning model architecture.

8. Job5: Retrain the model or notify that the best model is being created

9. Create One extra job job6 for monitor : If container where app is running. fails due to any reason then this job should automatically start the container again from where the last trained model left
---------------------------------------------------------------------------------------------
Firstly created a image that contains keras, tensorflow and some basic python libraries.
the name of image is Keras_p then from this image created another image called cnn:1 which is the main image used in whole process.
job1 will pull the python file from github.
job2 will identify the libraries of file. If it contains keras then cnn image will be invoked if not then another image called py:1 that have some basic libraries and sklearn.
In job3 model will be trained.
If the accuracy of model is less than 90 then job4 will run to retrain the model.
job5 will send a mail to the developer.
job6 will monitor the container whether they are in running condition or not.
