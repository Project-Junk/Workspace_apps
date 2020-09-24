.class public Lcom/coloros/commons/comparator/NameComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/commons/comparator/NameComparator;

.field public static final b:Lcom/coloros/commons/comparator/NameComparator;


# instance fields
.field private final c:Ljava/text/Collator;

.field private final d:Z

.field private final e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/commons/comparator/NameComparator;

    invoke-direct {v0}, Lcom/coloros/commons/comparator/NameComparator;-><init>()V

    sput-object v0, Lcom/coloros/commons/comparator/NameComparator;->a:Lcom/coloros/commons/comparator/NameComparator;

    new-instance v0, Lcom/coloros/commons/comparator/NameComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/commons/comparator/NameComparator;-><init>(Z)V

    sput-object v0, Lcom/coloros/commons/comparator/NameComparator;->b:Lcom/coloros/commons/comparator/NameComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/commons/comparator/NameComparator;->c:Ljava/text/Collator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/commons/comparator/NameComparator;->d:Z

    return-void

    nop

    :array_0
    .array-data 2
        -0x6a81s
        0x5e38s
    .end array-data
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/commons/comparator/NameComparator;->c:Ljava/text/Collator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/commons/comparator/NameComparator;->d:Z

    return-void

    nop

    :array_0
    .array-data 2
        -0x6a81s
        0x5e38s
    .end array-data
.end method

.method private a(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private a(Ljava/lang/String;)I
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

    const/4 p0, -0x3

    return p0

    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const p0, 0x7fffffff

    :goto_1
    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

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
    if-ge v5, v4, :cond_a

    aget-char v6, v0, v5

    aget-char v7, v1, v5

    invoke-direct {p0, v6}, Lcom/coloros/commons/comparator/NameComparator;->b(C)I

    move-result v8

    invoke-direct {p0, v7}, Lcom/coloros/commons/comparator/NameComparator;->b(C)I

    move-result v9

    if-ne v8, v9, :cond_9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coloros/commons/comparator/NameComparator;->c:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/coloros/commons/comparator/NameComparator;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/coloros/commons/comparator/NameComparator;->a(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v6, v7, :cond_8

    if-ne v6, v8, :cond_2

    return v9

    :cond_2
    if-ne v7, v8, :cond_3

    return v8

    :cond_3
    sub-int/2addr v6, v7

    return v6

    :cond_4
    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v8, v9, :cond_5

    if-eq v6, v7, :cond_5

    sub-int/2addr v7, v6

    return v7

    :cond_5
    if-ne v8, v9, :cond_6

    goto :goto_1

    :cond_6
    sub-int/2addr v8, v9

    return v8

    :cond_7
    if-eq v6, v7, :cond_8

    sub-int/2addr v6, v7

    return v6

    :cond_8
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    sub-int/2addr v8, v9

    return v8

    :cond_a
    sub-int/2addr v2, v3

    return v2
.end method

.method private b(C)I
    .locals 1

    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_0

    const v0, 0x9fa5

    if-gt p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/commons/comparator/NameComparator;->c(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/commons/comparator/NameComparator;->d(C)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private c(C)Z
    .locals 0

    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 p0, 0x39

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(C)Z
    .locals 0

    const/16 p0, 0x41

    if-lt p1, p0, :cond_0

    const/16 p0, 0x5a

    if-le p1, p0, :cond_1

    :cond_0
    const/16 p0, 0x61

    if-lt p1, p0, :cond_2

    const/16 p0, 0x7a

    if-gt p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(C)C
    .locals 1

    new-instance p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {p0, v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p0, v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    const/16 v0, 0x30

    :try_start_0
    invoke-static {p1, p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    return v0
.end method

.method public a(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/coloros/commons/comparator/NameComparator;->a(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/coloros/commons/comparator/NameComparator;->a(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/commons/comparator/NameComparator;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->c(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->b(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result p0

    return p0
.end method

.method public b(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 4

    invoke-interface {p1}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v1}, Lcom/coloros/commons/comparator/NameComparator;->b(C)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/coloros/commons/comparator/NameComparator;->b(C)I

    move-result v3

    if-eq v2, v3, :cond_0

    sub-int/2addr v2, v3

    return v2

    :cond_0
    if-ne v2, v3, :cond_3

    const/4 v3, 0x2

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

    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr v2, v3

    return v2

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    const-string p0, "SettingsComparator"

    const-string p1, "baseNameWithExt2.length==0"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string p0, "SettingsComparator"

    const-string p1, "baseNameWithExt1.length==0"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public c(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 10

    invoke-interface {p1}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    aget-char v2, v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    aget-char v1, v1, v0

    iget-object v2, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    aget-char v2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    aget-char v1, v1, v0

    iget-object v2, p0, Lcom/coloros/commons/comparator/NameComparator;->e:[C

    aget-char v2, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v1, -0x1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v2}, Lcom/coloros/commons/comparator/NameComparator;->b(C)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/coloros/commons/comparator/NameComparator;->b(C)I

    move-result v5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    const-string v7, "SettingsComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type1 == TYPE_CHINESE c1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/coloros/commons/comparator/NameComparator;->a(C)C

    move-result v2

    const-string v7, "SettingsComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FirstSpell c1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v5, v6, :cond_3

    const-string v7, "SettingsComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type2 == TYPE_CHINESE c2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/coloros/commons/comparator/NameComparator;->a(C)C

    move-result v0

    const-string v7, "SettingsComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FirstSpell c2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v4, v6, :cond_4

    if-ne v5, v6, :cond_4

    iget-object v0, p0, Lcom/coloros/commons/comparator/NameComparator;->c:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    if-ne v5, v6, :cond_6

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p1, p0, :cond_5

    return v1

    :cond_5
    sub-int/2addr p0, p1

    return p0

    :cond_6
    if-ne v4, v6, :cond_8

    if-ne v5, v7, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p1, p0, :cond_7

    return v3

    :cond_7
    sub-int/2addr p0, p1

    return p0

    :cond_8
    if-eq v4, v5, :cond_9

    sub-int/2addr v4, v5

    return v4

    :cond_9
    if-ne v4, v5, :cond_c

    if-ne v4, v7, :cond_c

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v1, v3, :cond_a

    if-eq v2, v0, :cond_a

    sub-int/2addr v0, v2

    return v0

    :cond_a
    if-ne v1, v3, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    sub-int/2addr v1, v3

    return v1

    :cond_c
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    const-string p0, "SettingsComparator"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "baseName2="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_e
    const-string p0, "SettingsComparator"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "baseName1="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;

    check-cast p2, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->a(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result p0

    return p0
.end method
