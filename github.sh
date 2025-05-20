#!/bin/bash

# Enter your GitHub username here, unless of course, you enjoy watching the world burn slowly.
USERNAME="" # <- Your royal highness’s GitHub username goes here.

# Enter your Personal Access Token here. Make sure it has repo deletion rights.
# If not, this script will be as useless as a CS degree without GitHub contributions.
TOKEN="" # <- Paste your magical token of doom here.

# Add the list of repositories you want to send into eternal oblivion.
# Be careful—once deleted, not even your tears will bring them back.
REPOS=(
"threat-intelligence-system" # <- Add as many failed experiments and abandoned dreams as you like.
# "example-repo-2" # <- Uncomment if you want to delete your hopes along with your code.
# "that-one-project-you-said-you’d-finish" # <- But we both know you won’t.
)

# Loop of death begins.
for REPO in "${REPOS[@]}"; do
    echo "Deleting repository: $REPO"
    # This is the point of no return. If this fails, you still suck, just with less baggage.
    curl -s -X DELETE -u "$USERNAME:$TOKEN" "https://api.github.com/repos/$USERNAME/$REPO"
done

# A moment of silence for the deleted repositories.
echo "All selected code has been yeeted into the void. No coming back."
