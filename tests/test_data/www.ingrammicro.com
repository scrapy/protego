<!--
-->


<script language="Javascript">

 loc = document.URL;
 
 begin_target = loc.indexOf("TARGET=");
 
 end_target = loc.length;
 
 target = loc.substring(begin_target + 7,end_target);
 
 target = target.replace(":80","");
 
 target = target.replace('$SM$', '');
 
 end_site = target.indexOf('/',10);
 
 site = target.substring(0,end_site);

 if(end_site == -1)
 {
    end_site = target.indexOf('%2f',16);
 }
 site = target.substring(0,end_site);
 while( (site.indexOf('%3a')) != -1)
 {
    site = site.replace('%3a', ':');
 }

 while( (site.indexOf('%2f')) != -1)
 {
    site = site.replace('%2f', '/');
 }

 while( (site.indexOf('%2e')) != -1)
 {
    site = site.replace('%2e', '.');
 }
 
 document.location.href = site + "/IMD_WASWeb/jsp/login/corporate.jsp?DEST=" + target;

</script>

