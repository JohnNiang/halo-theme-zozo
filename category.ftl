<#include "layouts/partials/head.ftl">
<@head title="标签：${category.name} · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${ctx!}/categories/${category.slugName!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="list_with_title">
            <div class="listing_title">分类：${category.name}</div>
            <div class="listing">
                <#list posts.content as post>
                <div class="listing_item">
                    <div class="listing_post">
                        <a href="${ctx!}/archives/${post.url!}">${post.title!}</a>
                        <div class="post_time"><span class="date">${post.createTime?string('yyyy-MM-dd')}</span></div>
                    </div>
                </div>
                </#list>
            </div>
        </div>
        <div class="pagination">
            <#if posts.totalPages gt 1>
                <#if posts.hasPrevious()>
                    <#if posts.number == 1>
                        <a href="${ctx!}/categories/${category.slugName!}" class="pre">
                            上一页
                        </a>
                    <#else>
                        <a href="${ctx!}/categories/${category.slugName!}/page/${posts.number}" class="pre">
                            上一页
                        </a>
                    </#if>
                </#if>
                <#if posts.hasNext()>
                    <a href="${ctx!}/categories/${category.slugName!}/page/${posts.number+2}" class="next">
                        下一页
                    </a>
                </#if>
            </#if>
        </div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
