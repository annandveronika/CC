<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Registered Teams
                </h1>
                <xsl:apply-templates select="//comand"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="comand">
        <xsl:if test="generate-id(.)= generate-id(//comand[@title=current()/@title][1])">
            <h2>
                <xsl:value-of select="@title"/>
            </h2>
            <h2>
                <xsl:value-of select="generate-id(.)"/>
            </h2>


            <table  border="1" bordercolor="black">
                <thead>
                    <tr>
                        <td>№</td>
                        <td>Members</td>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates select="//comand[@title=current()/@title]" mode="table"/>
                </tbody>
            </table>
        </xsl:if>
    </xsl:template>
    <xsl:template match="comand" mode="table">
        <tr>
            <td>
                <xsl:value-of select="@number1"/>
            </td>

            <td>
                <xsl:value-of select="@name1"/>
            </td>
        </tr>
        <tr>
            <td>
                <xsl:value-of select="@number2"/>
            </td>

            <td>
                <xsl:value-of select="@name2"/>
            </td>
        </tr>
        <tr>
            <td>
                <xsl:value-of select="@number3"/>
            </td>

            <td>
                <xsl:value-of select="@name3"/>
            </td>
        </tr>
        <tr>
            <td>
                <xsl:value-of select="@number4"/>
            </td>

            <td>
                <xsl:value-of select="@name4"/>
            </td>
        </tr>
        <tr>
            <td>
                <xsl:value-of select="@number5"/>
            </td>

            <td>
                <xsl:value-of select="@name5"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>