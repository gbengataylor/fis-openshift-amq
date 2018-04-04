Camel ActiveMQ Project
======================

This project embeds Apache ActiveMQ together with Apache Camel.

To build this project use

    mvn install

To run this project use the following Maven goal

    mvn camel:run

For more help see the Apache Camel documentation

    http://camel.apache.org/


to add hawtio to camel pod for s2i
https://access.redhat.com/documentation/en-us/red_hat_jboss_fuse/6.3/html-single/fuse_integration_services_2.0_for_openshift/index

8778 port in deployment config should add name: "jolokia"

