import org.apache.ofbiz.entity.GenericEntityException;

def createDemoApplicationOfbiz() {
    result = [:];
    try {
        DemoApplicationOfbiz = delegator.makeValue("DemoApplicationOfbiz");
        // Auto generating next sequence of DemoApplicationOfbizId primary key
        DemoApplicationOfbiz.setNextSeqId();
        // Setting up all non primary key field values from context map
        DemoApplicationOfbiz.setNonPKFields(context);
        // Creating record in database for DemoApplicationOfbiz entity for prepared value
        DemoApplicationOfbiz = delegator.create(DemoApplicationOfbiz);
        result.DemoApplicationOfbizId = DemoApplicationOfbiz.DemoApplicationOfbizId;
        logInfo("==========This is my first Groovy Service implementation in Apache OFBiz. DemoApplicationOfbiz record "
                +"created successfully with DemoApplicationOfbizId: "+DemoApplicationOfbiz.getString("DemoApplicationOfbizId"));
    } catch (GenericEntityException e) {
        logError(e.getMessage());
        return error("Error in creating record in DemoApplicationOfbiz entity ........");
    }
    return result;
} 