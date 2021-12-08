<table class="table table-bordered table-striped table-hover">
    <thead>
        <tr>
          <th>${uiLabelMap.DemoapplicationOfbizId}</th>
          <th>${uiLabelMap.DemoapplicationOfbizType}</th>
          <th>${uiLabelMap.DemoapplicationOfbizFirstName}</th>
          <th>${uiLabelMap.DemoapplicationOfbizLastName}</th>
          <th>${uiLabelMap.DemoapplicationOfbizComment}</th>
        </tr>
    </thead>
    <tbody>
        <#list DemoapplicationOfbizList as DemoapplicationOfbiz>
            <tr>
              <td>${DemoapplicationOfbiz.DemoapplicationOfbizId}</td>
              <td>${DemoapplicationOfbiz.getRelatedOne("DemoapplicationOfbizType").get("description", locale)}</td>
              <td>${DemoapplicationOfbiz.firstName?default("NA")}</td>
              <td>${DemoapplicationOfbiz.lastName?default("NA")}</td>
              <td>${DemoapplicationOfbiz.comments!}</td>
            </tr>
        </#list>
    </tbody>
</table> 
