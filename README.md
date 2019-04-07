# Imagination

The terrafrom script is setup to completely craeate a ubuntu EC2 instance, it will then put the ip address out into ansible/hosts is a configuration that ansible can use.


Running ansible-playbook -i hosts main.yml from the ansible root directory will configure the EC2 instance to have Jenkins, Nginx and the Flask app, with everything but Jenkins configured.

After the ansible script is run, go to the Jenkins url (<your-ip-address>:8080) then do the initial setup.
  
Start a new project that clones:

```https://github.com/realpython/flask-boilerplate.git```

Then add

```cd /var/lib/jenkins/workspace/Flask/
pip install -r requirements.txt```

To the list of commands to run after the clone.

Lastly from the Jenkins project file, you should be able to run:

```python app.py ```

Which will bring the Flask app up at <your-ip-address>
