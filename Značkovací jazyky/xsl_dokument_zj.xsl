<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/bakalarska_prace">
    [
    <xsl:for-each select="prace">
        <xsl:sort select="@id" order="ascending"/>
        {
        "ID": "<xsl:value-of select="@id"/>",
        "Jméno autora": "<xsl:value-of select="zakladni_informace_autor/jmeno_autora"/>",
        "Příjmení autora": "<xsl:value-of select="zakladni_informace_autor/prijmeni_autora"/>",
        "Pohlaví": "<xsl:value-of select="zakladni_informace_autor/pohlavi"/>",
        "Rok narození":"<xsl:value-of select="zakladni_informace_autor/datum_narozeni/rok"/>",
        "Kontakt":"<xsl:value-of select="zakladni_informace_autor/email"/>",
        "Druh studia":"<xsl:value-of select="zakladni_informace_autor/druh_studia"/>",
        "Studijní obor":"<xsl:value-of select="zakladni_informace_autor/studijni_obor"/>",
        "Studijní skupina":"<xsl:value-of select="zakladni_informace_autor/studijni_skupina"/>",
        "Typ psané práce":"<xsl:value-of select="zakladni_informace_prace/typ_prace"/>",
        "Název práce":"<xsl:value-of select="zakladni_informace_prace/nazev_prace_cestina"/>",
        "Vedoucí práce":"<xsl:value-of select="zakladni_informace_prace/vedouci_prace/prijmeni_vedouciho"/>",
        "Garantující katedra":"<xsl:value-of select="zakladni_informace_prace/garantujici_pracoviste"/>",
        "Předpokládaný rok obhajoby":"<xsl:value-of select="zakladni_informace_prace/predbezny_termin_obhajoby/skolni_rok"/>",
        "Formát stránky":"<xsl:value-of select="struktura_dokumentu/format_stranky"/>",
        "Použité písmo":"<xsl:value-of select="struktura_dokumentu/pismo/font"/>",
        "Použíté řádkování":"<xsl:value-of select="struktura_dokumentu/radkovani"/>"
        }
        <xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>
    ]
</xsl:template>
</xsl:stylesheet>
