

list the artifacts:

curl -X POST -k -H 'Content-Type:text/plain' -H 'X-JFrog-Art-Api: AKCp5dKskeRv2quzhUwiVEs8BwywNDNUbF8QRLwx6Egd6SbJ2c2fV8j3PhAi2x8YD4LX1YStZ' -i 'http://13.235.42.32:8081/artifactory/api/search/aql' --data 'items.find({"repo":"example-repo-local"})'


curl -X POST -k -H 'Content-Type:text/plain' -H 'X-JFrog-Art-Api: AKCp5dKskeRv2quzhUwiVEs8BwywNDNUbF8QRLwx6Egd6SbJ2c2fV8j3PhAi2x8YD4LX1YStZ' -i 'http://13.235.42.32:8081/artifactory/api/search/aql' --data 'items.find({"type":"file","created":{"$lt":"2014-05-18T"},"stat.downloaded":{"$lt":"2014-11-18T"},"repo":{"$nmatch":"*release*"},"size":{"$gt":"1000"}})'
