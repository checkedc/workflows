# checkedC-workflows

## Step 1: 
Switch to this github Repository and navigate to Actions
![image](https://user-images.githubusercontent.com/95626937/222797209-a5a1e1bc-80dd-48a1-aef1-fbed5fb8aa5b.png)

## Step 2:
Trigger the workflow manually by clicking on "Run Workflow"
![image](https://user-images.githubusercontent.com/95626937/222797293-5d4f3a21-56f9-41c0-8bff-22fbaa8d1613.png)

## Step3:
Configure the below options:
Successful compilation of checkedc-clang requires two repositories.
Hence options are provided below to configure the branches
and repositories of each of the required.
### Descriptions:
#### Test Type: 
CheckedC_clang = internally compiles "check-clang" target (27774 Tests)
CheckedC_LLVM = internally compilers "check-all" target (70451 Tests)
CheckedC_tests = internally compiler "check-checkedc" target (150 tests only on checked-c functionality)
#### Architecture:
X86_64, X86, ARM
![image](https://user-images.githubusercontent.com/95626937/222797490-5b114545-d783-43be-a69d-8396221b0d72.png)

## Step 4: Deleting Failed or Successful Workflow runs 
Self explanatory
