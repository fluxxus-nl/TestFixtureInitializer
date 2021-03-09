# Test Fixture Initializer
The standard Microsoft Dynamics 365 Business Central test collateral contains over 33,000 by now (January 2021) automated test that cover the most part of standard functional areas like G/L, Sales, Purchase, Manufacturing, etc. If your solution has been extending any of this it makes perfect sense to get these standard tests running on your solution. As described in various posts on my blog regarding [testability](http://dynamicsuser.net/tags/testability) it's not that difficult to get that going as in most cases it's [all about data](https://dynamicsuser.net/nav/b/vanvugt/posts/let-s-talk-about-text-fixture-and-how-to-profit-from-this-with-the-ms-nav-test-toolkit).

This repo contains three parts all to be found the TestFixtureInitializer folder.

1. an .al extension suggestion (in [TestFixtureInitializer\App](https://github.com/fluxxus-nl/TestFixtureInitializer/tree/master/TestFixtureInitializer/App)) to setup prebuilt, shared and (generic) fresh fixture to get standard MS tests run on your solution.
2. an .al extension (in [TestFixtureInitializer\Test](https://github.com/fluxxus-nl/TestFixtureInitializer/tree/master/TestFixtureInitializer/Test)) that contains logic to setup a test suite DEFAULT containing the tests of the MS standard tests apps that have been deployed to the database
3. Azure DevOps pipelines definitions based on ALOps to deploy and run MS test app(s)

With respect to the **first part** this schema shows how the various parts relate to each other:

![schema](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/Images/Test%20Fixture%20Initializer%20FlowChart.jpg) 

Find a more detailed description on my [blog](https://dynamicsuser.net/nav/b/vanvugt/posts/test-fixture-initializer).
Feel free to make use of the code, and share your suggestions for improvements by means of an issue report.

The **second and third part** have been effectuated as [Azure DevOps pipelines](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/). You will find a pipeline per test extension, but also 6 batches of MS test apps that could be combine as at this very moment not all MS test apps can coexist in one test suite (see more detailed info below).

#### Notes
- If a test app is marked as _excluded_ this means that is can not be combined with the ones _included_ as one or more tests do fail in that batch after it has been added.
- **Tests-Local** for w1 does not contain any tests, so, has not been included in any of the batches

The following batches constitute out of those test apps that do not influence each others tests and only disable tests that needed to be disbled to run each test app without errors on its own. Below them 4 individual test apps are listed as these coud not be part of any batch for reasons already mentiond, or, as with ERM and SCM, they are to big already.

## Batch 1 [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Batch%20of%20Tests%20Apps%20pipeline/Batch%201%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=49&branchName=master)
Including | Excluding | |
-- | -- | -- |
Tests-Cost Accounting | ~~Tests-Bank~~ | ~~Tests-SMB~~
Tests-CRM integration | ~~Tests-Dimension~~ | ~~Tests-VAT~~
Tests-Fixed Asset | ~~Tests-Job~~ | ~~Tests-Workflow~~
Tests-General Journal | ~~Tests-Misc~~ |
Tests-Rapid Start | ~~Tests-Prepayment~~ |
Tests-Resource | ~~Tests-Report~~ |
Tests-Reverse | ~~Tests-User~~ |

## Batch 2 [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Batch%20of%20Tests%20Apps%20pipeline/Batch%202%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=50&branchName=master)
Including | Excluding | |
-- | -- | -- |
Tests-Bank | ~~Tests-Dimension~~ | ~~Tests-SMB~~
Tests-Data Exchange | ~~Tests-Invoicing~~ | ~~Tests-User~~
Tests-Marketing | ~~Tests-Misc~~ | ~~Tests-VAT~~
Tests-Permissions | ~~Tests-Prepayment~~ | ~~Tests-Workflow~~
Tests-SMTP | ~~Tests-Report~~

## Batch 3 [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Batch%20of%20Tests%20Apps%20pipeline/Batch%203%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=51&branchName=master)
Including | Excluding | | | |
-- | -- | -- | -- | -- |
Tests-Invoicing | ~~Tests-Dimension~~ | ~~Tests-Marketing~~ | ~~Tests-Prepayment~~ | ~~Tests-User~~
Tests-Job | ~~Tests-Graph~~ | ~~Tests-Misc~~ | ~~Tests-Report~~ | ~~Tests-VAT~~
Tests-Upgrade | ~~Tests-Integration~~  | ~~Tests-Permissions~~ | ~~Tests-SMB~~ | ~~Tests-Workflow~~

## Batch 4  [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Batch%20of%20Tests%20Apps%20pipeline/Batch%204%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=52&branchName=master)
Including | Excluding | |
-- | -- | -- |
Tests-Dimension | ~~Tests-Marketing~~  | ~~Tests-Workflow~~
Tests-Graph | ~~Tests-Misc~~
Tests-Integration | ~~Tests-Report~~
Tests-Monitoring Sensitive Fields  |  ~~Tests-Prepayment~~
Tests-Physical Inventory | ~~Tests-SMB~~
Tests-User | ~~Tests-VAT~~

## Batch 5 [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Batch%20of%20Tests%20Apps%20pipeline/Batch%205%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=53&branchName=master)
Including | Excluding | |
-- | -- | -- |
Tests-SMB | ~~Tests-Misc~~ | ~~Tests-Report~~
Tests-Workflow | ~~Tests-Prepayment~~ | ~~Tests-VAT~~

####  Notes
- **Tests-Report** and **Tests-Misc** do not go together
- **Tests-Report** and **Tests-Workflow** do not go together

## Batch 6 [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Batch%20of%20Tests%20Apps%20pipeline/Batch%206%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=54&branchName=master)
Including | Excluding
-- | -- 
Tests-Prepayment | ~~Tests-Misc~~
Tests-Report | ~~Tests-VAT~~

####  Notes
- **Tests-Report** and **Tests-Misc** do not go together
- **Tests-Report** and **Tests-VAT** do not go together

## Cash Flow [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Single%20Test%20App%20pipeline%20(Onprem)/CASH%20FLOW%20tests%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=18&branchName=master)
Including | 
-- | 
Tests-Cash Flow |

####  Notes
- no need for a separate batch .yml, DisabledTests.json and pipeline; these do already exist
  - (1) [.yml](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Azure%20Pipelines/azure-pipelines-CASH%20FLOW%20-%20onprem.yml) (2) [DisabledTests.json](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Test/DisabledTests/DisabledTests-CASH%20FLOW.json) (3) [pipeline](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build?definitionId=18) 
- contains 389 tests (of which 22 fail today when all Cash Flow tests are run in one stretch)
- **Tests-Cash Flow** can not be combined with other MS test app as it messes up many tests of other MS test apps (tested for _Tests-Dimension_, _Tests-Graph_, _Tests-Integration_, _Tests-Invoicing_,_Tests-Marketing_, _Tests-Misc,_ _Tests-Permissions_)

## ERM [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Single%20Test%20App%20pipeline%20(Onprem)/ERM%20tests%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=15&branchName=master)
Including | 
-- | 
Tests-ERM|

####  Notes
- no need for a separate batch .yml, DisabledTests.json and pipeline; these do already exist
  - (1) [.yml](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Azure%20Pipelines/azure-pipelines-ERM%20-%20onprem.yml) (2) [DisabledTests.json](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Test/DisabledTests/DisabledTests-ERM.json) (3) [pipeline](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build?definitionId=15) 
- **Tests-ERM** should not be combined with any other MS test app as it 
  - messes up many tests of all other MS test apps
  - contains almost 9000 tests (of which almost 1200 fail today when all ERM tests are run in one stretch) and execution takes more than long enough to keep this separate (4h5m on _Standard E4as_v4 (4 vcpus, 32 GiB memory)_ Azure VM)

## Misc [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Single%20Test%20App%20pipeline%20(Onprem)/MISC%20tests%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=28&branchName=master)
Including | 
-- | 
Tests-Misc |

####  Notes
- no need for a separate batch .yml, DisabledTests.json and pipeline; these do already exist
  - (1) [.yml](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Azure%20Pipelines/azure-pipelines-MISC%20-%20onprem.yml) (2) [DisabledTests.json](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Test/DisabledTests/DisabledTests-MISC.json) (3) [pipeline](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build?definitionId=28) 
- contains 3,156 tests (of which 349 fail today when all Misc tests are run in one stretch)
- **Tests-Misc** can not be combined with other MS test app as it messes up many tests of other MS test apps (see exclusions mentioned in batches 1-6)

## SCM [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Single%20Test%20App%20pipeline%20(Onprem)/SCM%20tests%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=37&branchName=master)
Including | 
-- | 
Tests-SCM |

####  Notes
- No need for a separate batch .yml, DisabledTests.json and pipeline; these do already exist
  - (1) [.yml](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Azure%20Pipelines/azure-pipelines-SCM%20-%20onprem.yml) (2) [DisabledTests.json](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Test/DisabledTests/DisabledTests-SCM.json) (3) [pipeline](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/results?buildId=371&view=results)
- it seems wise not to combine **Tests-SCM** with any other test app as it contains almost 9300 test and execution takes more than long enough to keep this separate (4h20m on _Standard E4as_v4 (4 vcpus, 32 GiB memory)_ Azure VM)
- today almost 400 tests do fail when all SCM tests are run in one stretch

## VAT [![Build Status](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_apis/build/status/Single%20Test%20App%20pipeline%20(Onprem)/VAT%20tests%20(Onprem)?branchName=master)](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build/latest?definitionId=42&branchName=master)
Including | 
-- | 
Tests-VAT |

####  Notes
- no need for a separate batch .yml, DisabledTests.json and pipeline; these do already exist
  - (1) [.yml](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Azure%20Pipelines/azure-pipelines-VAT%20-%20onprem.yml) (2) [DisabledTests.json](https://github.com/fluxxus-nl/TestFixtureInitializer/blob/master/TestFixtureInitializer/Test/DisabledTests/DisabledTests-VAT.json) (3) [pipeline](https://dev.azure.com/fluxxus-nl/TestFixtureInitializer/_build?definitionId=42) 
- contains 928 tests (of which 13 fail today when all VAT tests are run in one stretch)
- **Tests-VAT** can not be combined with other MS test app as it messes up many tests of other MS test apps (see exclusions mentioned in batches 1-6)
