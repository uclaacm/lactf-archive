<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="color: white; background-color: #111111">
                <h1>Bin <xsl:value-of select="bin/@id"/></h1>
                <p>Hits: <xsl:value-of select="bin/@hits"/></p>
                <p>Time: <xsl:value-of select="bin/@time"/>ms since epoch</p>
                <p>Serialization time: <xsl:value-of select="bin/@generation"/>ms</p>
                <table style="text-align: left; white-space: nowrap" border="1">
                    <tr style="color: lime">
                        <th>ID</th>
                        <th>Type</th>
                        <th>Name</th>
                        <th>Content</th>
                    </tr>
                    <xsl:for-each select="bin/file">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="content"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Server information</h2>
                <p>Version: <xsl:value-of select="bin/@version"/></p>
                <p>Uptime: <xsl:value-of select="bin/@uptime"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
