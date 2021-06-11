# Deploy C# Azure Function using Pulumi

Azure Functions in C# and deployed to a Consumption Plan on Windows.

## Deploying the App

To deploy your infrastructure, follow the below steps.

### Prerequisites

1. [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
2. [Install .NET Core 3.0+](https://dotnet.microsoft.com/download)
3. Azure CLI(https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

### Steps

1.  Create a new stack:

    ```
    pulumi stack init dev
    ```

1.  Login to Azure CLI (you will be prompted to do this during deployment if you forget this step):

    ```
    az login
    ```

1.  Build and publish the Functions project:

    ```
    dotnet publish functions
    ```

1.  Configure the location to deploy the resources to:

    ```
    pulumi config set azure:location JapanEast
    ```

1.  Run `pulumi up` to preview and deploy changes:

    ```
    pulumi up --yes
    ```

1.  Check the deployed function endpoints:

    ```
    curl "$(pulumi stack output Endpoint)"
    Hello, Pulumi
    ```

1. Once you've finished experimenting, tear down your stack's resources by destroying and removing it:

    ```bash
    pulumi destroy --yes
    pulumi stack rm --yes
    ```
