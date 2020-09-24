.class Lnet/sourceforge/pinyin4j/d;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[a-z]*[1-5]?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "[a-z]*[1-5]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, "ou"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x24

    const/4 v8, -0x1

    if-eq v8, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v8, v4, :cond_1

    move v1, v3

    move v2, v4

    goto :goto_1

    :cond_1
    if-eq v8, v5, :cond_2

    const-string v1, "ou"

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[aeiouv]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    move v1, v7

    move v2, v8

    :goto_1
    if-eq v7, v1, :cond_5

    if-eq v8, v2, :cond_5

    const-string v3, "aeiouv"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    const-string v0, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "v"

    const-string v5, "\u00fc"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "v"

    const-string v2, "\u00fc"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0

    :cond_6
    const-string v0, "v"

    const-string v1, "\u00fc"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method static a(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;

    const-string p1, "tone marks cannot be added to v or u:"

    invoke-direct {p0, p1}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "[1-5]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    const-string v0, "u:"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_1
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    const-string v0, "u:"

    const-string v1, "v"

    :goto_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    const-string v0, "u:"

    const-string v1, "\u00fc"

    goto :goto_2

    :cond_5
    :goto_3
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getCaseType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    move-result-object p1

    if-ne v0, p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method
