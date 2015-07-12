<ul>
{foreach from=$virtualProducts item=product}
	<li>
		<a href="{$product.link|escape:'html'}">{$product.name}</a>
		{if isset($product.deadline)}
			<br><small>plik aktywny do {$product.deadline}</small>
		{/if}
		{if isset($product.downloadable)}
			<br><small>maksymalna możliwość ściągnięć: {$product.downloadable}</small>
		{/if}
	</li>
{/foreach}
</ul>