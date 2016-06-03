<%@ include file="include.jsp" %>
<%@ page language="java" contentType="text/xml; charset=utf-8" pageEncoding="iso-8859-1"%>

<rss version="2.0">
    <channel>
        <title>Subrobotnik Podcast</title>
        <link>${model.url}</link>
        <description>Subrobotnik Podcast</description>
        <language>en-us</language>
        <image>
            <url>https://avatars1.githubusercontent.com/u/19507307?v=3&s=512</url>
            <title>Subrobotnik Podcast</title>
        </image>

        <c:forEach var="podcast" items="${model.podcasts}">
            <item>
                <title>${fn:escapeXml(podcast.name)}</title>
                <link>${model.url}</link>
                <description>Subrobotnik playlist "${fn:escapeXml(podcast.name)}"</description>
                <pubDate>${podcast.publishDate}</pubDate>
                <enclosure url="${podcast.enclosureUrl}" length="${podcast.length}" type="${podcast.type}"/>
            </item>
        </c:forEach>

    </channel>
</rss>
