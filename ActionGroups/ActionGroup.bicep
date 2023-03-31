param actionGroupName string

param actionGroupShortName string 

param Tags object

param isActionGroupEnabled bool = true

param emailReceivers array = []

resource efcnh_action_group 'Microsoft.Insights/actionGroups@2023-01-01' = {
  name: actionGroupName
  location: 'global'
  tags: Tags
  properties: {    
    emailReceivers: emailReceivers
    enabled: isActionGroupEnabled   
    groupShortName: actionGroupShortName   
  }
}
