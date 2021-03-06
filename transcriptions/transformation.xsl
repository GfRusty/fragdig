<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs" version="2.0">

    <xsl:template match="filelist">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <title>
                    <xsl:text>Fragmente Digital</xsl:text>
                </title>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
                <link rel="stylesheet" type="text/css" href="../css/mdb.min.css"/>
                <link href="https://fonts.googleapis.com/css?family=Cardo" rel="stylesheet"/>
                <link rel="stylesheet" type="text/css" href="../css/fragdig.css" />
                <script src="https://code.jquery.com/jquery-1.12.4.js"><xsl:text> </xsl:text></script>
                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"><xsl:text> </xsl:text></script>
                <script src="../js/mdb.min.js"><xsl:text> </xsl:text></script>
                <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
                    $(document).ready(function() {
                        function toggleFunction(className1, className2, obj) {
                            var $input = $(obj);
                            if ($input.prop('checked')){
                                $(className1).hide();
                                $(className2).show();
                            }
                            else {
                                $(className1).show();
                                $(className2).hide();
                            }
                        }
                    }
                </script>-->
                <!-- xsl:text mit Leerzeichen ist bei all den Scripts notwendig, da die Seite ansonsten nicht funktioniert. Gott weiß, warum -->
            </head>
            <body>
                <div class="container-fluid fixed-top">
                    <div class="row pt-3 pb-3 yellow darken-3 rounded">
                        <h1 class="pl-3">Fragmente Digital</h1>
                    </div>
                    <div class="row p-0 yellow rounded">
                        <div class="col-sm-12 p-0">
                            <nav class="navbar navbar-expand-lg navbar-light p-2 rounded">
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#main_navbar_top" aria-controls="main_navbar_top"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="main_navbar_top">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item">
                                            <a class="nav-link rounded" href="../index.html">Home</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle rounded" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">About</a>
                                            <div class="dropdown-menu yellow lighten-4"
                                                aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item rounded" href="projekt.html"
                                                    >Projekt</a>
                                                <a class="dropdown-item rounded" href="dokumentation.html"
                                                    >Dokumentation</a>
                                            </div>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link rounded" href="fragmente.html">Fragmente</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link rounded" href="viewer.html">Viewer</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link rounded" href="download.html">Downloads</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="container-fluid p-5 m-4"/>
                <!-- Ein leerer Container der leider für Anständiges Spacing nötig ist. Er nimmt denselben Platz ein wie der Container für Überschrift h1 und Navbar, welcher fixed-top ist -->
                <div class="container-fluid p-0">
                    <div class="row pt-4 pb-5 justify-content-around">
                        <div class="col-sm-12 p-0">
                            <div class="container yellow lighten-4 border z-depth-1 rounded">
                                <h2 class="pt-3 pb-2"><u>Fragmente</u></h2>
                                <!--<input type="checkbox" onclick="toggleFunction('.abbr', '.expan', this)"> Abkürzungen aufschlüsseln</input>-->
                                <!-- Akkordion -->

                                <div id="accordion">

                                    <!-- Hier überlegen, wie alle Dokumente einfügen. Dann wohl for-each document oder so eine card einfügen -->
                                    <xsl:apply-templates select="files"/>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <footer class="page-footer pb-5 yellow text-dark z-depth-1 rounded">
                    <div class="container">
                        <div class="row pt-3 pb-5">
                            <div class="col-sm-6">
                                <h6 style="border-bottom:1px solid">Weitere Informationen</h6>
                                <p><a href="impressum.html" style="color:black"
                                    onmouseover="this.style.textDecoration='underline'"
                                    onmouseout="this.style.textDecoration='none'">Impressum</a></p>
                                <p><a href="datenschutz.html" style="color:black"
                                    onmouseover="this.style.textDecoration='underline'"
                                    onmouseout="this.style.textDecoration='none'">Datenschutz</a></p>
                            </div>
                            <div class="col-sm-6">
                                <h6 style="border-bottom:1px solid">Kontakt</h6>
                                <p>Alexander Fruhwirth:</p>
                                <p>Angelika Hechtl:</p>
                                <p>Selina Galka:</p>
                                <p>Stefan Heider:</p>
                            </div>
                        </div>
                        <div class="row pb-5"></div>
                    </div>
                </footer>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"><xsl:text> </xsl:text></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"><xsl:text> </xsl:text></script>

            </body>
        </html>
    </xsl:template>

    <!-- Templates -->

    <xsl:template match="lg">
        <xsl:for-each select="l">
            <xsl:apply-templates/>
            <br/>
        </xsl:for-each>
        <br/>
    </xsl:template>

    <xsl:template match="files">
        <xsl:for-each select="file">
            <xsl:variable name="fragID">
                <xsl:value-of select="document(.)/t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title"
                />
            </xsl:variable>
            <xsl:variable name="fragID">
                <xsl:value-of
                    select="replace(replace(replace(replace($fragID, ',', ''), ' ', ''), '-', ''), '–', '')"
                />
            </xsl:variable>

            <div class="card">
                <div class="card-header">
                    <xsl:attribute name="id">
                        <xsl:text>heading</xsl:text>
                        <xsl:value-of select="$fragID"/>
                    </xsl:attribute>
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" aria-expanded="false">
                            <xsl:attribute name="aria-controls">
                                <xsl:text>collapse</xsl:text>
                                <xsl:value-of select="$fragID"/>
                            </xsl:attribute>
                            <xsl:attribute name="data-target">
                                <xsl:text>#collapse</xsl:text>
                                <xsl:value-of select="$fragID"/>
                            </xsl:attribute>
                            <xsl:value-of select="position()"/>
                            <xsl:text>. </xsl:text>
                            <xsl:apply-templates
                                select="document(.)/t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title"
                            />
                        </button>
                    </h5>
                </div>
                <div>
                    <xsl:attribute name="id">
                        <xsl:text>collapse</xsl:text>
                        <xsl:value-of select="$fragID"/>
                    </xsl:attribute>
                    <xsl:attribute name="class">collapse</xsl:attribute>
                    <xsl:attribute name="aria-labelledby">
                        <xsl:text>heading</xsl:text>
                        <xsl:value-of select="$fragID"/>
                    </xsl:attribute>
                    <xsl:attribute name="data-parent">#accordion</xsl:attribute>

                    <!-- Eigentliches Fragment bzw. der Inhalt der Card -->

                    <div class="card-body">

                        <div class="row">
                            <xsl:for-each select="document(.)/t:TEI/t:facsimile/t:surface">

                                <xsl:variable name="imgsrc">
                                    <xsl:value-of select="t:graphic/@url"/>
                                </xsl:variable>
                                <xsl:variable name="imgsrc">
                                    <xsl:value-of
                                        select="replace($imgsrc, 'file:///', '../graphic/')"/>
                                </xsl:variable>
                                <div class="col">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="$imgsrc"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="width">100%</xsl:attribute>
                                    </img>
                                </div>
                            </xsl:for-each>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col">
                                <b>Original</b>
                            </div>
                        </div>
                        <xsl:if
                            test="count(document(.)/t:TEI/t:text/t:body/t:div[contains(@type, 'original')]) &gt; 1">
                            <div class="row">
                                <div class="col">
                                    <i>recto</i>
                                </div>
                                <div class="col">
                                    <i>verso</i>
                                </div>
                            </div>
                        </xsl:if>
                        <div class="row">
                            <xsl:for-each
                                select="document(.)/t:TEI/t:text/t:body/t:div[contains(@type, 'original')]">
                                <div class="col">
                                    <xsl:apply-templates select="t:milestone"/>
                                    <xsl:apply-templates select="t:expan"/>
                                    <xsl:apply-templates select="t:abbr"/>
                                    <xsl:apply-templates select="t:lg/t:l"/>  
                                </div>
                            </xsl:for-each>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col">
                                <b>Übersetzung</b>
                            </div>
                        </div>
                        <xsl:if test="count(document(.)/t:TEI/t:text/t:body/t:div[contains(@type, 'original')]) &gt; 1">
                            <div class="row">
                                <div class="col">
                                    <i>recto</i>
                                </div>
                                <div class="col">
                                    <i>verso</i>
                                </div>
                            </div>
                        </xsl:if>
                        <div class="row">
                            <!-- TODO: Hier muss im XML noch die Adresse angegeben werden -->
                            <xsl:for-each
                                select="document(.)/t:TEI/t:text/t:body/t:div[contains(@type, 'translation')]">
                                <div class="col">
                                        <xsl:apply-templates select="t:milestone"/>
                                        <xsl:apply-templates select="t:expan"/>
                                        <xsl:apply-templates select="t:abbr"/>
                                        <xsl:apply-templates select="t:lg/t:l"/>                                       
                                        
                                        <!--<a href="https://www.bibleserver.com">
                                            <img src="..\html\icons\deutsch.jpg"/>
                                        </a>
                                        <xsl:text>   </xsl:text>
                                        <a href="https://www.bibleserver.com">
                                            <img src="..\html\icons\englisch.jpg"/>
                                        </a>-->
                                    
                                </div>
                            </xsl:for-each>
                        </div>
                        <!-- origindate und textlang. was ist mit Rest? -->
                        <br/>
                        <br/>
                        <div class="row">
                            <div class="col">
                                <h3>Metadaten</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <b>Typ</b>
                            </div>
                            <div class="col-sm-8">
                                <xsl:value-of
                                    select="document(.)/t:TEI/t:text/t:body/t:listBibl/t:msDesc/t:physDesc/t:p"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <b>Sprache</b>
                            </div>
                            <div class="col-sm-8">
                                <xsl:value-of
                                    select="document(.)/t:TEI/t:teiHeader/t:fileDesc/t:sourceDesc/t:msDesc/t:msContents/t:textLang"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <b>Ursprung</b>
                            </div>
                            <div class="col-sm-8">
                                <xsl:text>Zwischen </xsl:text>
                                <xsl:value-of
                                    select="document(.)/t:TEI/t:teiHeader/t:fileDesc/t:sourceDesc/t:msDesc/t:history/t:origin/t:origDate/@notBefore"/>
                                <xsl:text> und </xsl:text>
                                <xsl:value-of
                                    select="document(.)/t:TEI/t:teiHeader/t:fileDesc/t:sourceDesc/t:msDesc/t:history/t:origin/t:origDate/@notAfter"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="t:milestone">
        <i><xsl:text>[</xsl:text>
        <xsl:value-of select="@ana"/>
        <xsl:text>] </xsl:text></i>
    </xsl:template>
    
    <xsl:template match="t:expan">
        <span class="expan" style="display: none">
            <xsl:apply-templates/> 
        </span>
    </xsl:template>
    
    <xsl:template match="t:abbr">
        <span class="abbr" style="display: inline">
            <xsl:apply-templates/> 
        </span>
    </xsl:template>        
        
    <xsl:template match="t:lg/t:l">
        <xsl:apply-templates/> 
        <br/>
    </xsl:template> 
    
    </xsl:stylesheet>
