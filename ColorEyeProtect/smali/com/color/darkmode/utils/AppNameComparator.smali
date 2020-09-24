.class public Lcom/color/darkmode/utils/AppNameComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/color/darkmode/utils/IAppOrderInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARATOR:Lcom/color/darkmode/utils/AppNameComparator;

.field public static final COMPLEX_COMPARATOR:Lcom/color/darkmode/utils/AppNameComparator;

.field private static final TAG:Ljava/lang/String; = "AppNameComparator"

.field private static final TYPE_CHINESE:I = 0x2

.field private static final TYPE_LETTER:I = 0x1

.field private static final TYPE_NUMBER:I = 0x3

.field private static final TYPE_OTHER:I = 0x4


# instance fields
.field private final collator:Ljava/text/Collator;

.field private final mComplex:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/utils/AppNameComparator;

    invoke-direct {v0}, Lcom/color/darkmode/utils/AppNameComparator;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/AppNameComparator;->COMPARATOR:Lcom/color/darkmode/utils/AppNameComparator;

    new-instance v0, Lcom/color/darkmode/utils/AppNameComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/color/darkmode/utils/AppNameComparator;-><init>(Z)V

    sput-object v0, Lcom/color/darkmode/utils/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/color/darkmode/utils/AppNameComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/darkmode/utils/AppNameComparator;->collator:Ljava/text/Collator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/darkmode/utils/AppNameComparator;->mComplex:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/color/darkmode/utils/AppNameComparator;->collator:Ljava/text/Collator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/darkmode/utils/AppNameComparator;->mComplex:Z

    return-void
.end method

.method private compare2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_9

    aget-char v6, v0, v5

    aget-char v7, v1, v5

    invoke-static {v6}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v8

    invoke-static {v7}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v9

    if-ne v8, v9, :cond_8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/color/darkmode/utils/AppNameComparator;->collator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v8, v9, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/color/darkmode/utils/AppNameComparator;->getNumber(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/color/darkmode/utils/AppNameComparator;->getNumber(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v6, v7, :cond_7

    if-ne v6, v8, :cond_2

    return v10

    :cond_2
    if-ne v7, v8, :cond_3

    return v8

    :cond_3
    sub-int/2addr v6, v7

    return v6

    :cond_4
    if-ne v8, v10, :cond_6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-ne v6, v7, :cond_5

    goto :goto_1

    :cond_5
    sub-int/2addr v6, v7

    return v6

    :cond_6
    if-eq v6, v7, :cond_7

    sub-int/2addr v6, v7

    return v6

    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    sub-int/2addr v8, v9

    return v8

    :cond_9
    sub-int/2addr v2, v3

    return v2
.end method

.method public static getFirstSpell(C)C
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    const/16 v1, 0x30

    :try_start_0
    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    return p0

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    :catch_1
    return v1
.end method

.method public static getFirstSpellForSearchBar(Ljava/lang/String;)C
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x30

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/color/darkmode/utils/AppNameComparator;->getFirstSpell(C)C

    move-result p0

    :cond_1
    return p0
.end method

.method private static getLetterType(C)I
    .locals 1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fa5

    if-gt p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-static {p0}, Lcom/color/darkmode/utils/AppNameComparator;->isNum(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    invoke-static {p0}, Lcom/color/darkmode/utils/AppNameComparator;->isLetter(C)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private getNumber(Ljava/lang/String;)I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-le v1, v0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    if-lez v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const p0, 0x7fffffff

    :goto_1
    return p0
.end method

.method private getType(Lcom/color/darkmode/utils/IAppOrderInfo;)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private static isLetter(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNum(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public compare(Lcom/color/darkmode/utils/IAppOrderInfo;Lcom/color/darkmode/utils/IAppOrderInfo;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/color/darkmode/utils/AppNameComparator;->getType(Lcom/color/darkmode/utils/IAppOrderInfo;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/color/darkmode/utils/AppNameComparator;->getType(Lcom/color/darkmode/utils/IAppOrderInfo;)I

    move-result v1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/color/darkmode/utils/AppNameComparator;->mComplex:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/AppNameComparator;->complexCompare(Lcom/color/darkmode/utils/IAppOrderInfo;Lcom/color/darkmode/utils/IAppOrderInfo;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/AppNameComparator;->compare1(Lcom/color/darkmode/utils/IAppOrderInfo;Lcom/color/darkmode/utils/IAppOrderInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/color/darkmode/utils/IAppOrderInfo;

    check-cast p2, Lcom/color/darkmode/utils/IAppOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/AppNameComparator;->compare(Lcom/color/darkmode/utils/IAppOrderInfo;Lcom/color/darkmode/utils/IAppOrderInfo;)I

    move-result p0

    return p0
.end method

.method public compare1(Lcom/color/darkmode/utils/IAppOrderInfo;Lcom/color/darkmode/utils/IAppOrderInfo;)I
    .locals 5

    invoke-virtual {p1}, Lcom/color/darkmode/utils/IAppOrderInfo;->getOrderInfo1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/color/darkmode/utils/IAppOrderInfo;->getOrderInfo1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v1}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v2

    invoke-static {v0}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v4

    if-eq v2, v4, :cond_0

    sub-int/2addr v2, v4

    return v2

    :cond_0
    if-ne v2, v4, :cond_3

    if-ne v2, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_1

    if-eq v1, v0, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/utils/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr v2, v3

    return v2

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/utils/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    return v3

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public complexCompare(Lcom/color/darkmode/utils/IAppOrderInfo;Lcom/color/darkmode/utils/IAppOrderInfo;)I
    .locals 10

    invoke-virtual {p1}, Lcom/color/darkmode/utils/IAppOrderInfo;->getOrderInfo1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/color/darkmode/utils/IAppOrderInfo;->getOrderInfo1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v4}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v6

    invoke-static {v3}, Lcom/color/darkmode/utils/AppNameComparator;->getLetterType(C)I

    move-result v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    invoke-static {v4}, Lcom/color/darkmode/utils/AppNameComparator;->getFirstSpell(C)C

    move-result v4

    :cond_0
    if-ne v7, v8, :cond_1

    invoke-static {v3}, Lcom/color/darkmode/utils/AppNameComparator;->getFirstSpell(C)C

    move-result v3

    :cond_1
    invoke-static {v4}, Lcom/color/darkmode/utils/AppNameComparator;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-virtual {p1, v9}, Lcom/color/darkmode/utils/IAppOrderInfo;->setInitialChar(C)V

    :cond_2
    invoke-static {v3}, Lcom/color/darkmode/utils/AppNameComparator;->isLetter(C)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {p2, p1}, Lcom/color/darkmode/utils/IAppOrderInfo;->setInitialChar(C)V

    :cond_3
    if-ne v6, v8, :cond_4

    if-ne v7, v8, :cond_4

    iget-object p1, p0, Lcom/color/darkmode/utils/AppNameComparator;->collator:Ljava/text/Collator;

    invoke-virtual {p1, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v6, v5, :cond_6

    if-ne v7, v8, :cond_6

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p1, p0, :cond_5

    return v2

    :cond_5
    sub-int/2addr p0, p1

    return p0

    :cond_6
    if-ne v6, v8, :cond_8

    if-ne v7, v5, :cond_8

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p1, p0, :cond_7

    return v5

    :cond_7
    sub-int/2addr p0, p1

    return p0

    :cond_8
    if-eq v6, v7, :cond_9

    sub-int/2addr v6, v7

    return v6

    :cond_9
    if-ne v6, v7, :cond_b

    if-ne v6, v5, :cond_b

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p1, p2, :cond_a

    invoke-direct {p0, v0, v1}, Lcom/color/darkmode/utils/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_a
    sub-int/2addr p1, p2

    return p1

    :cond_b
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/color/darkmode/utils/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_c
    return v5

    :cond_d
    return v2
.end method
