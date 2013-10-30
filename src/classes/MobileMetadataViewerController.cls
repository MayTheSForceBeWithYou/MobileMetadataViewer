public with sharing class MobileMetadataViewerController{
    public List<ApexClass> getAllClasses(){
        List<ApexClass> cList = [SELECT Id, Body, Name, NamespacePrefix, ApiVersion, IsValid, LengthWithoutComments FROM ApexClass LIMIT 2000];
        return cList;
    }
    
    public List<ApexTrigger> getAllTriggers(){
        List<ApexTrigger> tList = [SELECT Id, Body, Name, NamespacePrefix, ApiVersion, IsValid, LengthWithoutComments FROM ApexTrigger LIMIT 2000];
        return tList;
    }
    
    public List<ApexComponent> getAllComponents(){
        List<ApexComponent> cList = [SELECT Id, Name, NamespacePrefix, ApiVersion, Markup, ControllerKey, ControllerType FROM ApexComponent LIMIT 2000];
        return cList;
    }
    
    public List<ApexPage> getAllPages(){
        List<ApexPage> pList = [SELECT Id, Name, NamespacePrefix, ApiVersion, Markup, ControllerKey, ControllerType FROM ApexPage LIMIT 2000];
        return pList;
    }
}