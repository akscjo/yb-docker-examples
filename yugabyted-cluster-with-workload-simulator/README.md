# Docker compose example to Start 3 node yugabyted cluster and Workload Simulator
You can accomplish following items using this example:
1. Start a 3 node YugabyteDB cluster.
2. Start a [Workload Simulator application](https://github.com/YugabyteDB-Samples/yb-workload-simulator) which will connect to the YugabyteDB cluster.
3. Using Workload Simulator application, you can run a create the database tables, see data, and run read/write simulations.
4. You will be able to scale the cluster from 3 nodes to 6 nodes using provided script - scale-cluster.sh
5. Users can test the fault tolerance by stopping any nodes and watch the latency and throughput metrics in real time.

## Prerequisites
1. [Docker](https://docs.docker.com/engine/install/)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## How to run
1. Clone this repository
2. Run the following command to start the cluster and workload simulator application
    ```
    ./start.sh
    ```
   This will start a 3 node YugabyteDB cluster and Workload Simulator application.
![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/931c4054-eda7-470b-9921-cfb9ebbc9801)


   You can access the YugabyteDB cluster at http://localhost:15433
   ![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/629620ac-a64d-4906-a5d8-461ba71a00a4)


   
   You can access the Workload Simulator application at http://localhost:8080
![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/ef196f60-dd6a-4297-b350-dc8adf41ec74)

   Create database tables from the Workload Simulator UI:
![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/d0df2a15-c6a6-4ff0-b3ad-5fc09ac761e2)

   Seed Data:
![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/c67f6192-25bc-4aa2-985a-f232baa94f83)

   Run Simulation:

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/6d72f915-0e19-4d3b-a1c6-5636532be8f7)

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/9d42be24-2b22-4114-ad5b-7550f06e45f4)

    
   


3. For scaling the cluster, simply run the following command
    ```
    ./scale-cluster.sh
    ```
   This will scale the cluster from 3 nodes to 6 nodes.

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/e2567832-dde9-4dfb-a3a7-0afe837a5f43)

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/f1a3cb65-73fa-42f7-a1dd-c0f90808de33)

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/a686e896-8b5b-45da-8640-1cf89143e9d8)



4. For Resiliency testing, you can stop one of the database cluster container (I am doing that from docket UI client on mac in below example):

   ![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/89d5c651-015f-4b32-afe9-bc1ede5f5a3a)

    It will remove yugabyted-4 node.

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/7a839eb3-fe78-4047-869e-b218c1314903)

![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/857871e3-f339-4e39-a05b-043c7a1b5a76)


5. When you are done, you can shutdown the cluster and workload simulator application by running the following command
    ```
    ./shutdown.sh
    ```
![image](https://github.com/akscjo/yb-docker-examples/assets/92008321/8fe4ba9b-cb32-4f52-8020-8984a25651cb)


6. Workload Simulator App is customizable App. You can find more details regarding environment variables, etc [here] (https://github.com/YugabyteDB-Samples/yb-workload-simulator)
7. If you would like to pass any new gflags to your "yugabyted", this [link](https://docs.yugabyte.com/preview/reference/configuration/yugabyted/) provides configuration details.
