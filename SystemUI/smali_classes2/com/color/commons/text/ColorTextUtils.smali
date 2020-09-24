.class public Lcom/color/commons/text/ColorTextUtils;
.super Ljava/lang/Object;
.source "ColorTextUtils.java"


# static fields
.field private static final EMOJI_REGEX:Ljava/lang/String; = "\uff1f|\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

.field private static final FILE_NAME_DYNAMIC_REGEX:Ljava/lang/String; = ".*[\\\\/*:?<>|\"]+?.*"

.field private static sEmojiPattern:Ljava/util/regex/Pattern;

.field private static sFileNameIllegalPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEmojiInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/color/commons/text/ColorTextUtils$1;

    invoke-direct {v0, p1}, Lcom/color/commons/text/ColorTextUtils$1;-><init>(Landroid/widget/Toast;)V

    invoke-static {p0, v0}, Lcom/color/commons/text/ColorTextUtils;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public static addIllgalFileNameInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/color/commons/text/ColorTextUtils$2;

    invoke-direct {v0, p1}, Lcom/color/commons/text/ColorTextUtils$2;-><init>(Landroid/widget/Toast;)V

    invoke-static {p0, v0}, Lcom/color/commons/text/ColorTextUtils;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public static addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V
    .locals 5

    .line 62
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 66
    new-array v2, v2, [Landroid/text/InputFilter;

    move v3, v1

    goto :goto_0

    .line 68
    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    .line 69
    new-array v3, v3, [Landroid/text/InputFilter;

    move-object v4, v3

    move v3, v2

    move-object v2, v4

    .line 71
    :goto_0
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    aput-object p1, v2, v3

    .line 75
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static addLengthInputFilter(Landroid/widget/EditText;ILandroid/widget/Toast;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/color/commons/text/ColorTextUtils$3;

    invoke-direct {v0, p1, p2}, Lcom/color/commons/text/ColorTextUtils$3;-><init>(ILandroid/widget/Toast;)V

    invoke-static {p0, v0}, Lcom/color/commons/text/ColorTextUtils;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public static containsEmoji(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 34
    :cond_0
    sget-object v0, Lcom/color/commons/text/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, "\uff1f|\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/color/commons/text/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    .line 38
    :cond_1
    sget-object v0, Lcom/color/commons/text/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static containsIllegalCharFileName(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 50
    :cond_0
    sget-object v0, Lcom/color/commons/text/ColorTextUtils;->sFileNameIllegalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, ".*[\\\\/*:?<>|\"]+?.*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/color/commons/text/ColorTextUtils;->sFileNameIllegalPattern:Ljava/util/regex/Pattern;

    .line 54
    :cond_1
    sget-object v0, Lcom/color/commons/text/ColorTextUtils;->sFileNameIllegalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static filterEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 22
    :cond_0
    sget-object v0, Lcom/color/commons/text/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, "\uff1f|\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/color/commons/text/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    .line 25
    :cond_1
    sget-object v0, Lcom/color/commons/text/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
