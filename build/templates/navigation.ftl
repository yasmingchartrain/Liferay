<ul class="nav flex-column">
	<#list nav_items as nav_item>
		<#assign nav_item_css_class = "" />

		<#if nav_item.isSelected()>
			<#assign nav_item_css_class = "active" />
		</#if> 

		<li class="nav-item">
			<a 
				class="nav-link ${nav_item_css_class}" 
				href="${nav_item.getURL()}"
				data-sena-off="true"
				target="_blank"
				
			>
				${nav_item.getName()}
				
			</a>
		</li>
	</#list>
</ul>