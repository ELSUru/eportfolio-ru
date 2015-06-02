{include file="header.tpl"}
{if $cancreate}
            <div class="rbuttons">
                <a href="{$WWWROOT}group/edit.php" class="btn creategroup">{str tag="creategroup" section="group"}</a>
            </div>
{/if}
{$form|safe}
{if $groups}<table id="mygroups" class="fullwidth listing">
{foreach from=$groups item=group}
            <tr><td class="{cycle values='r0,r1'}">
                    {include file="group/groupuserstatus.tpl" group=$group returnto='find'}
                <div class="mygroupsdetails">
                     {include file="group/group.tpl" group=$group returnto='mygroups'}
                </div>
            </td></tr>
{/foreach}
			</table>
{$pagination|safe}
{else}
            <div class="message">{str tag="trysearchingforgroups" section="group" args=$searchingforgroups}</div>
{/if}
{include file="footer.tpl"}
