#### This directory contains docker sources of a few sample WSO2 demos ####

**Environment Setup**
	
  1. Add a host entry to the host machine
     - `docker machine start` - will start the docker machine if you are using `windows` or `OSx`.
     - `docker machine ip` - will display the IP address of the docker machine.
     - Open the `hosts` file of the host machine, and add an entry as `<ip-address> docker.machine`.

**Demo Scenario 02:** Publisher-Subscriber
	
  1. Start the message-broker and ESB server containers
     - `docker-compose up -d activemq` - will create the activemq image and boot it up
     - `docker-compose up -d esb` - will create the esb image and boot it up
  2. Upload the Composite Archive to the ESB
       - Open the WSO2 ESB Management Console with [https://docker.machine:9444/carbon](https://docker.machine:9444/carbon)
       - Upload 'artifacts/0001SampleCARProject_1.0.0.car' via `Main --> Manage --> Carbon Applications --> Add`
  3. Tail ESB logs
       - `docker exec -it esb.sample.com bash` - will take you into the ESB container.
       - `tail -f /wso2/wso2esb-4.9.0/repository/logs/wso2carbon.log` - will tail the ESB server logs.
       - Observe the logs while executing the blow.
  4. Invoke the API
       - Use a REST client app like the [postman](https://www.getpostman.com/)
       - Send a POST request to `http://docker.machine:8281/profile/events`
       - With the payload given below.
```json
{
    "eventtype": "addresschange",
    "timestamp": "20160504T212449Z",
    "user": "jc987654",
    "address": {
        "line1": "308 Negra Arroyo Lane",
        "line2": "Albuquerque",
        "state": "New Mexico",
        "country": "USA",
        "postcode": "87111"
    }
}
```
       
