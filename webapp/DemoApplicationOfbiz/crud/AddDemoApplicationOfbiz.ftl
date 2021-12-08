<form method="post" action="<@ofbizUrl>createDemoApplicationOfbizEventFtl</@ofbizUrl>" name="createDemoApplicationOfbizEvent" class="form-horizontal">
  <div class="control-group">
    <label class="control-label" for="DemoApplicationOfbizTypeId">${uiLabelMap.DemoApplicationOfbizType}</label>
    <div class="controls">
      <select id="DemoApplicationOfbizTypeId" name="DemoApplicationOfbizTypeId">
        <#list DemoApplicationOfbizTypes as demoType>
          <option value='${demoType.DemoApplicationOfbizTypeId}'>${demoType.description}</option>
        </#list>
      </select>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="firstName">${uiLabelMap.DemoApplicationOfbizFirstName}</label>
    <div class="controls">
      <input type="text" id="firstName" name="firstName" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="lastName">${uiLabelMap.DemoApplicationOfbizLastName}</label>
    <div class="controls">
      <input type="text" id="lastName" name="lastName" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="comments">${uiLabelMap.DemoApplicationOfbizComment}</label>
    <div class="controls">
      <input type="text" id="comments" name="comments">
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn">${uiLabelMap.CommonAdd}</button>
    </div>
  </div>
</form>
