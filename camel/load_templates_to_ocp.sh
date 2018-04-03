# load fis imagestreams
#oc create -n openshift -f https://raw.githubusercontent.com/openshift/library/master/official/fis/imagestreams/fis-java-openshift-rhel7.json
#oc create -n openshift -f https://raw.githubusercontent.com/openshift/library/master/official/fis/imagestreams/fis-karaf-openshift-rhel7.json

# note this is looking a the fis 2.0 R6 stream. may have to change in future
oc create -n openshift -f https://raw.githubusercontent.com/jboss-fuse/application-templates/fis-2.0.x.redhat-R6/fis-image-streams.json


#load the templates

for template in karaf2-camel-amq-template.json \
 karaf2-camel-log-template.json \
 karaf2-camel-rest-sql-template.json \
 karaf2-cxf-rest-template.json \
 spring-boot-camel-amq-template.json \
 spring-boot-camel-config-template.json \
 spring-boot-camel-drools-template.json \
 spring-boot-camel-infinispan-template.json \
 spring-boot-camel-rest-sql-template.json \
 spring-boot-camel-template.json \
 spring-boot-camel-xml-template.json \
 spring-boot-cxf-jaxrs-template.json \
 spring-boot-cxf-jaxws-template.json \
 spring-boot-camel-teiid-template.json; 
 do
oc create -n openshift -f https://raw.githubusercontent.com/jboss-fuse/application-templates/fis-2.0.x.redhat-R6/quickstarts/${template}
oc replace -n openshift -f https://raw.githubusercontent.com/jboss-fuse/application-templates/fis-2.0.x.redhat-R6/quickstarts/${template}
done

