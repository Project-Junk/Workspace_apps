.class public Lcom/coloros/commons/comparator/NameComparator;
.super Ljava/lang/Object;
.source "NameComparator.java"

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
.field public static final COMPARATOR:Lcom/coloros/commons/comparator/NameComparator;

.field public static final COMPLEX_COMPARATOR:Lcom/coloros/commons/comparator/NameComparator;

.field private static final TAG:Ljava/lang/String; = "SettingsComparator"

.field private static final TYPE_CHINESE:I = 0x3

.field private static final TYPE_LETTER:I = 0x2

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_OTHER:I = 0x4


# instance fields
.field private final collator:Ljava/text/Collator;

.field private final mComplex:Z

.field private final mDuoyin:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/coloros/commons/comparator/NameComparator;

    invoke-direct {v0}, Lcom/coloros/commons/comparator/NameComparator;-><init>()V

    sput-object v0, Lcom/coloros/commons/comparator/NameComparator;->COMPARATOR:Lcom/coloros/commons/comparator/NameComparator;

    .line 27
    new-instance v0, Lcom/coloros/commons/comparator/NameComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/commons/comparator/NameComparator;-><init>(Z)V

    sput-object v0, Lcom/coloros/commons/comparator/NameComparator;->COMPLEX_COMPARATOR:Lcom/coloros/commons/comparator/NameComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coloros/commons/comparator/NameComparator;->mDuoyin:[C

    .line 32
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/commons/comparator/NameComparator;->collator:Ljava/text/Collator;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/coloros/commons/comparator/NameComparator;->mComplex:Z

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [C

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/commons/comparator/NameComparator;->mDuoyin:[C

    .line 37
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/commons/comparator/NameComparator;->collator:Ljava/text/Collator;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/coloros/commons/comparator/NameComparator;->mComplex:Z

    return-void

    nop

    :array_0
    .array-data 2
        -0x6a81s
        0x5e38s
    .end array-data
.end method

.method private compare2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 126
    array-length v2, v0

    .line 127
    array-length v3, v1

    .line 128
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_a

    .line 131
    aget-char v6, v0, v5

    .line 132
    aget-char v7, v1, v5

    .line 133
    invoke-direct {p0, v6}, Lcom/coloros/commons/comparator/NameComparator;->getLetterType(C)I

    move-result v8

    .line 134
    invoke-direct {p0, v7}, Lcom/coloros/commons/comparator/NameComparator;->getLetterType(C)I

    move-result v9

    if-ne v8, v9, :cond_9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/coloros/commons/comparator/NameComparator;->collator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 142
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/coloros/commons/comparator/NameComparator;->getNumber(Ljava/lang/String;)I

    move-result v6

    .line 143
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/coloros/commons/comparator/NameComparator;->getNumber(Ljava/lang/String;)I

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

    .line 158
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    .line 159
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

.method private getLetterType(C)I
    .locals 1

    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_0

    const v0, 0x9fa5

    if-gt p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/commons/comparator/NameComparator;->isNum(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/commons/comparator/NameComparator;->isLetter(C)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

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

    .line 183
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 184
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

    .line 195
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

.method private getType(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private isLetter(C)Z
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

.method private isNum(C)Z
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


# virtual methods
.method public compare(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/coloros/commons/comparator/NameComparator;->getType(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result v0

    .line 44
    invoke-direct {p0, p2}, Lcom/coloros/commons/comparator/NameComparator;->getType(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/commons/comparator/NameComparator;->mComplex:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->complexCompare(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result p0

    return p0

    .line 50
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->compare1(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;

    check-cast p2, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->compare(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I

    move-result p0

    return p0
.end method

.method public compare1(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 4

    .line 63
    invoke-interface {p1}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {p2}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "SettingsComparator"

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    invoke-direct {p0, v2}, Lcom/coloros/commons/comparator/NameComparator;->getLetterType(C)I

    move-result v1

    .line 81
    invoke-direct {p0, v0}, Lcom/coloros/commons/comparator/NameComparator;->getLetterType(C)I

    move-result v3

    if-eq v1, v3, :cond_0

    sub-int/2addr v1, v3

    return v1

    :cond_0
    if-ne v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 86
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 87
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v1, v3, :cond_1

    if-eq v2, v0, :cond_1

    sub-int/2addr v0, v2

    return v0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr v1, v3

    return v1

    .line 100
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    const-string p0, "baseNameWithExt2.length==0"

    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string p0, "baseNameWithExt1.length==0"

    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public complexCompare(Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;)I
    .locals 10

    .line 202
    invoke-interface {p1}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-interface {p2}, Lcom/coloros/commons/comparator/NameComparator$IOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/coloros/commons/comparator/NameComparator;->mDuoyin:[C

    aget-char v3, v2, v0

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    .line 205
    aget-char v1, v2, v0

    aget-char v2, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/coloros/commons/comparator/NameComparator;->mDuoyin:[C

    aget-char v3, v2, v0

    if-ne v1, v3, :cond_1

    .line 208
    aget-char v1, v2, v0

    aget-char v2, v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v1, -0x1

    const-string v2, "SettingsComparator"

    if-eqz p1, :cond_e

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz p2, :cond_d

    .line 220
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d

    .line 221
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 229
    invoke-direct {p0, v3}, Lcom/coloros/commons/comparator/NameComparator;->getLetterType(C)I

    move-result v5

    .line 230
    invoke-direct {p0, v0}, Lcom/coloros/commons/comparator/NameComparator;->getLetterType(C)I

    move-result v6

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type1 == TYPE_CHINESE c1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0, v3}, Lcom/coloros/commons/comparator/NameComparator;->getFirstSpell(C)C

    move-result v3

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FirstSpell c1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v6, v7, :cond_3

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type2 == TYPE_CHINESE c2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, v0}, Lcom/coloros/commons/comparator/NameComparator;->getFirstSpell(C)C

    move-result v0

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FirstSpell c2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v5, v7, :cond_4

    if-ne v6, v7, :cond_4

    .line 244
    iget-object v0, p0, Lcom/coloros/commons/comparator/NameComparator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v5, v2, :cond_6

    if-ne v6, v7, :cond_6

    .line 246
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    .line 247
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p1, p0, :cond_5

    return v1

    :cond_5
    sub-int/2addr p0, p1

    return p0

    :cond_6
    if-ne v5, v7, :cond_8

    if-ne v6, v2, :cond_8

    .line 254
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    .line 255
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p1, p0, :cond_7

    return v4

    :cond_7
    sub-int/2addr p0, p1

    return p0

    :cond_8
    if-eq v5, v6, :cond_9

    sub-int/2addr v5, v6

    return v5

    :cond_9
    if-ne v5, v6, :cond_c

    if-ne v5, v2, :cond_c

    .line 265
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 266
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_a

    if-eq v3, v0, :cond_a

    sub-int/2addr v0, v3

    return v0

    :cond_a
    if-ne v1, v2, :cond_b

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    sub-int/2addr v1, v2

    return v1

    .line 275
    :cond_c
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/commons/comparator/NameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 223
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "baseName2="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 217
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "baseName1="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getFirstSpell(C)C
    .locals 1

    .line 279
    new-instance p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 280
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {p0, v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 281
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p0, v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    const/16 v0, 0x30

    .line 283
    :try_start_0
    invoke-static {p1, p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 285
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 288
    aget-object p0, p0, p1

    .line 289
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

    .line 292
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    return v0
.end method
