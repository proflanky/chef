# learn_chef_iis

TODO: Enter the cookbook description here.

Chef works on 3 components
Workstation (Used to generate the configs, test and push to server)
Server (Talks directly with the workstation and makes available configs made from the workstation)
Clients or node (Goes to the server to pull the configs)
-	Chef uses the pull mechanism.
*Assuming I create a cookbooks folder in my project folder
#To generate a cookbook
chef generate cookbook cookbooks\learn_chef_iis

#To generate a template 
chef generate template cookbooks\learn_chef_iis Default.htm

#Test my template
chef-client --local-mode --runlist 'recipe[learn_chef_iis]'
# --runlist can be used to run multiple recipes. it specifies recipes to run
