// Parameters
@description('Desired location for each service environment')
param resourceLocation string

@description('Desired location for each service environment')
param resourceName string

@description('Desired description for the provisioned resources')
param resourceDescription string

// Resources
resource Image_gallery_Bicep 'Microsoft.Compute/galleries@2020-09-30' = {
  name: resourceName
  location: resourceLocation
  properties: {
    description: resourceDescription
  }
}
