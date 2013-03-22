<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
       <xsl:output method="text" omit-xml-declaration="yes"/>
       <xsl:template match="/">       			
       		   <xsl:value-of select = "//fullDisplayName" />
       		   <xsl:text>, </xsl:text>
       		   <xsl:value-of select = "//culprit/fullName" />
       		   <xsl:text>
</xsl:text>                                        
               <xsl:for-each select = "//changeSet/item">               			
                       <xsl:value-of select="substring(commitId,1,8)"/>
                       <xsl:text> </xsl:text>
                       <xsl:value-of select="author/fullName"/>
                       <xsl:text> </xsl:text>
                       <xsl:value-of select="comment"/>                   	   
               </xsl:for-each>
       </xsl:template>
</xsl:stylesheet>