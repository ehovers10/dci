# Staging in conversation

Conversation has a workflow, which involves a number of steps. These steps both address the limitations of the collaborative process and highlight the value that it provides.

GIT reset SHA as a means of rewinding history.
+ Working directoy remains unchanged, but commits are removed from project.

Notions of version
+ Commits within a project create different versions of individual files.
+ Branches are different versions of a complete project.

Locations (Stages of workflow)
+ Working directory (file open in an editor)
+ Staging area (added but uncommitted files)
+ Repository (storage for committed changes)

On Repository
+ A tree structure with nodes serving as versions and branches representing files chained by means of the *changes* from earlier to later nodes.

Collaboration workflow
+ Fetch and merge changes from the remote
+ Create a branch to work on a new project feature
+ Develop the feature on the branch and commit work
+ Fetch and merge from the remote again (in case new commits were made while working)
+ Push your branch up to the remote for review

Merge conflicts and safeguards
+ Merging is often done in the background because each interlocutor's working directory is mostly available to the others (auditorily). But conflicts can arise, and a fetch is a safeguard that allows us to check out changes before they are committed.
+ Automatic merge is common, using precedence rules to determine which author's changes override. But conflict can arise, and nonce merge correction can be carried out.

