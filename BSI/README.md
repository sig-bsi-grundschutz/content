# Summary
The following is intended for people who want to use this UPSTREAM content in the context of OpenShift, and do not need to understand the details of the buildprocess. It combines the Red Hat packaged Compliance Operator from Red Hat with the upstream content

# Install Compliance Operator
Follow the guidance in the official docs
https://docs.openshift.com/container-platform/4.16/security/compliance_operator/co-management/compliance-operator-installation.html#compliance-operator-installation

# Build
You can get the content in different ways. First possibility is a build from source in your own infrastructure.
The other possibility is a prebuild-content image, which provides the build content for you

## ALTERNATIVE A: BUILD FROM SOURCE
This Process builds the content only for one cluster in the internal registry. if you need it in different clusters, you need to build it and output it to a image-repository. You can do this in an openshift cluster using the `outputs` in the `BuildConfig` or just manually build with `podman build --tag $IMAGEREGISTRY:$TAG --file BSI/Containerfile .` from the `content` directory

### Clone git Repository
`git clone --depth 1 https://github.com/sig-bsi-grundschutz/content.git --branch bsi-profile-complete-2024-10-31`

### Build content in the cluster using the build scripts
`./utils/build_ds_container.py --create-profile-bundles --build-in-cluster`

IMPORTANT!
This creates additional upstream-rules and Profiles (prefixed with upstream) in the OpenShift Cluster due to the current functionality in RHACS the Compliance Dashboard in RHACS will show DUPLICATE RULES and throw ERRORS for the duplicate rules and not show the additional content

This can currently be worked around with the following command, which REPLACES THE SUPPORTED CONTENT with the upstream content
`./utils/build_ds_container.py --create-profile-bundles --build-in-cluster --no-upstream-prefix`

## ALTERNATIVE B: Use PreBuild Image
in disconnected / airgapped environments you might want to mirror the image first and either change the contentImage or create a `ImageDigestMirrorSet`.

This follows https://docs.openshift.com/container-platform/4.17/security/compliance_operator/co-management/compliance-operator-manage.html

`oc apply -f BSI/ProfileBundles.yaml`

# Schedule
The profiles are prefixed with upstream in this case. If you do not use a prefix, please change accordingly
This follows https://docs.openshift.com/container-platform/4.17/security/compliance_operator/co-scans/compliance-scans.html

`oc apply -f BSI/ScanSettings.yaml`
