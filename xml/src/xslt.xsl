<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Registered Teams</title>
                <link rel="stylesheet" href="css/bootstrap.css"/>
                <link rel="stylesheet" href="css/style.css"/>
                <style>
                    td {
                    width:10vw;
                    height:5vh;
                    }
                    h1, h2, h3 {
                    color: #D59B42;
                    font-family:Montserrat;
                    }
                    table {
                    font-family:Oswald;
                    }
                </style>
            </head>
            <body>
                <nav>
                    <div class="row">
                        <div class="col-sm-offset-1 col-sm-1 scroll">
                            <div class="rebelNav">
                                <a href="index.html#mainPage" class="rebeltea">RebelTea</a>
                            </div>
                        </div>
                        <div class=" col-sm-offset-2 scroll col-sm-5">
                            <div class="leftNav">
                                <a href="index.html#aboutLink" class="navLink">ABOUT</a>
                            </div>

                            <div class="leftNav">
                                <a href="index.html#rulesLink" class="navLink">RULES</a>
                            </div>
                            <div class="leftNav">
                                <a href="index.html#winnersLink" class="navLink">WINNERS</a>
                            </div>
                            <div class="leftNav">
                                <a href="index.html#galleryLink" class="navLink">GALLERY</a>
                            </div>
                            <div class="leftNav">
                                <a href="index.html#contactsLink" class="navLink">CONTACTS</a>
                            </div>

                        </div>
                        <div class="col-sm-3">
                            <a class="rightNav" href="index.html#win2" role="button" data-toggle="modal">REGISTRATION</a>
                            <a class="rightNav" href="index.html#win3" role="button" data-toggle="modal">SEND US A MESSAGE</a>

                        </div>
                    </div>
                </nav>
                <section style="padding-top: 80px; ">
                    <div class="row">
                        <div class="col-sm-offset-3 col-sm-6" style="text-align:center;">
                            <h1>Registered Teams</h1>
                            <xsl:apply-templates select="//comand"/>
                        </div>
                        <div class="col-sm-3">
                        </div>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="comand">
        <xsl:if test="generate-id(.)= generate-id(//comand[@title=current()/@title][1])">
            <h2>
                <xsl:value-of select="@title"/>
            </h2>
            <!--<h2>
                <xsl:value-of select="generate-id(.)"/>
            </h2>-->


            <table border="1" bordercolor="black" style="margin: 0 auto; text-align:center;">
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