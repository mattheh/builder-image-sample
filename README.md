#  Builder Image Extension
Example of using a Dockerfile in combination with a BuildConfig to extend a base image with additional resources.  In this case we are simply adding a .so file and then outputting the new image to the internal Openshift registry

## Steps

 * `oc new-project builder-image-sample` 
 * `oc create -f buildConfig.yaml`
 * `oc create -f imageStream.yaml`
 * `oc start-build builder-image-sample --from-dir .`

Once the build completes, the new image will have been outputted to the registry, with the ImageStream `latest` tag pointing to it.  

Note that it is also possible to have the image be pushed to an external registry by changing the BuildConfig