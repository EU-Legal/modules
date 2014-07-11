{if $is_object}
<span class="delivery-info">
	<span class="delivery-label">
		{l s='Delivery' mod='eu_legal'}:
	</span>
	<span class="delivery-value">
		{if $product->quantity <= 0}
			{if $allow_oosp}
				{$product->delivery_later}
			{else}
				{l s='This product is no longer in stock' mod='eu_legal'}
			{/if}
		{else}
			{$product->delivery_now}
		{/if}
	</span>				
</span>
{else}
<span class="delivery-info">
	<span class="delivery-label">
		{l s='Delivery' mod='eu_legal'}:
	</span>
	<span class="delivery-value">
		{if $product.quantity <= 0}
			{if $product.allow_oosp}
				{$product.delivery_later}
			{else}
				{l s='This product is no longer in stock' mod='eu_legal'}
			{/if}
		{else}
			{$product.delivery_now}
		{/if}
	</span>				
</span>
{/if}		
