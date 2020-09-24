.class public Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;
.super Ljava/lang/Object;
.source "ColorTextUtils.java"


# static fields
.field private static final EMOJI_REGEX:Ljava/lang/String; = "\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

.field private static final FILE_NAME_DYNAMIC_REGEX:Ljava/lang/String; = ".*[\\\\/*:?<>|\"]+?.*"

.field private static sEmojiPattern:Ljava/util/regex/Pattern;

.field private static sFileNameIllegalPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->isValidChar(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static addEmojiInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$1;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$1;-><init>(Landroid/widget/Toast;)V

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public static addIllgalNameInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$2;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$2;-><init>(Landroid/widget/Toast;)V

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public static addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V
    .locals 5

    .line 97
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 101
    new-array v2, v2, [Landroid/text/InputFilter;

    move v3, v1

    goto :goto_0

    .line 103
    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    .line 104
    new-array v3, v3, [Landroid/text/InputFilter;

    move-object v4, v3

    move v3, v2

    move-object v2, v4

    .line 106
    :goto_0
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    aput-object p1, v2, v3

    .line 110
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static addLengthInputFilter(Landroid/widget/EditText;ILandroid/widget/Toast;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$3;

    invoke-direct {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$3;-><init>(ILandroid/widget/Toast;)V

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public static containsEmoji(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, "\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    .line 52
    :cond_1
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 53
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

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 64
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sFileNameIllegalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, ".*[\\\\/*:?<>|\"]+?.*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sFileNameIllegalPattern:Ljava/util/regex/Pattern;

    .line 68
    :cond_1
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sFileNameIllegalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 69
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

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 36
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    const-string v0, "\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    .line 39
    :cond_1
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->sEmojiPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 40
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidChar(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 86
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const v3, 0xd7ff

    if-le v2, v3, :cond_2

    :cond_1
    const v3, 0xe000

    if-lt v2, v3, :cond_3

    const v3, 0xfffd

    if-gt v2, v3, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v2
.end method
