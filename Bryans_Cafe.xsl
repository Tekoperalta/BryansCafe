<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f0f8ff;
                    }
                    .card {
                        background-color: #add8e6;
                        border-radius: 10px;
                        padding: 15px;
                        margin: 10px;
                        width: 250px;
                        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
                    }
                    .card img {
                        max-width: 100%;
                        border-radius: 5px;
                    }
                    .card h2 {
                        margin: 10px 0;
                        font-size: 18px;
                    }
                    .card p {
                        margin: 5px 0;
                        font-size: 14px;
                    }
                </style>
            </head>
            <body>
                <xsl:apply-templates select="Products"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Products">
        <div>
            <xsl:apply-templates select="Product"/>
        </div>
    </xsl:template>
    
    <xsl:template match="Product">
        <div class="card">
            <h2><xsl:value-of select="Name"/></h2>
            <p><strong>Price:</strong> <xsl:value-of select="Price"/></p>
            <p><xsl:value-of select="Description"/></p>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="Img"/>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
</xsl:stylesheet>