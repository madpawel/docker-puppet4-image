FROM centos:7
MAINTAINER Pawel Madon

# Update base container
RUN yum update -y

# Install puppet repo and puppet agent 4.x
RUN rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm && \
    yum -y install puppet-agent

# Install hiera-eyaml for hiera data encryption
RUN /opt/puppetlabs/puppet/bin/gem install hiera-eyaml

# Add puppet bin to PATH
ENV PATH /opt/puppetlabs/puppet/bin:$PATH
