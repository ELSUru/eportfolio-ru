{include file="header.tpl"}
<p>{str tag=allowediframesitesdescription section=admin}</p>
<p>{str tag=allowediframesitesdescriptiondetail section=admin}</p>

{if $editurls}
<table class="iframesources">
  <thead>
    <tr>
      <th>{str tag=Site}</th>
      <th>{str tag=displayname}</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  {foreach from=$editurls item=item name=urls}
    <tr class="{cycle values='r0,r1' advance=false}">
      <td><strong>{$item.url}</strong></td>
      <td><img src="{$item.icon}" alt="{$item.name}" title="{$item.name}">&nbsp;{$item.name}</td>
      <td class="right buttonscell btns2">
        <a id="edit-{$item.id}" class="url-open-editform nojs-hidden-inline" title="{str tag=edit}" href="">
          <img src="{theme_url filename="images/edit.gif"}">
        </a>
        {$item.deleteform|safe}
      </td>
    </tr>
    <tr class="editrow {cycle} url-editform js-hidden" id="edit-{$item.id}-form">
      <td colspan=3>{$item.editform|safe}</td>
    </tr>
  {/foreach}
  </tbody>
</table>
{/if}

<hr>
{$newform|safe}

{include file="footer.tpl"}
