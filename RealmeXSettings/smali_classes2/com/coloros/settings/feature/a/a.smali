.class public final Lcom/coloros/settings/feature/a/a;
.super Ljava/lang/Object;
.source "AppNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/settingslib/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/settings/feature/a/a;

.field public static final b:Lcom/coloros/settings/feature/a/a;


# instance fields
.field private final c:Ljava/text/Collator;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/coloros/settings/feature/a/a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/a/a;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/a/a;->a:Lcom/coloros/settings/feature/a/a;

    .line 38
    new-instance v0, Lcom/coloros/settings/feature/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/a/a;-><init>(B)V

    sput-object v0, Lcom/coloros/settings/feature/a/a;->b:Lcom/coloros/settings/feature/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/a/a;->c:Ljava/text/Collator;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/coloros/settings/feature/a/a;->d:Z

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/a/a;->c:Ljava/text/Collator;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/coloros/settings/feature/a/a;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)C
    .locals 2

    .line 313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x30

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 317
    invoke-static {p0}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3301
    invoke-static {p0}, Lcom/coloros/settings/f/c;->a(C)C

    move-result p0

    :cond_1
    return p0
.end method

.method private static a(C)I
    .locals 2

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fa5

    if-gt p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/16 v0, 0x30

    const/4 v1, 0x1

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 120
    :cond_2
    invoke-static {p0}, Lcom/coloros/settings/feature/a/a;->b(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 138
    array-length v2, v0

    .line 139
    array-length v3, v1

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    .line 143
    aget-char v6, v0, v5

    .line 144
    aget-char v7, v1, v5

    .line 145
    invoke-static {v6}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v8

    .line 146
    invoke-static {v7}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v9

    if-ne v8, v9, :cond_7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    if-eq v6, v7, :cond_6

    .line 1307
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/coloros/settings/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2307
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/coloros/settings/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1202
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    sub-int v8, v6, v7

    :cond_0
    if-eqz v8, :cond_6

    return v8

    :cond_1
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v8, v9, :cond_4

    .line 161
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/settings/feature/a/a;->b(Ljava/lang/String;)I

    move-result v6

    .line 162
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/coloros/settings/feature/a/a;->b(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v6, v7, :cond_6

    if-ne v6, v8, :cond_2

    return v10

    :cond_2
    if-ne v7, v8, :cond_3

    return v8

    :cond_3
    sub-int/2addr v6, v7

    return v6

    :cond_4
    if-ne v8, v10, :cond_5

    .line 177
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 178
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_6

    sub-int/2addr v6, v7

    return v6

    :cond_5
    if-eq v6, v7, :cond_6

    sub-int/2addr v6, v7

    return v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    sub-int/2addr v8, v9

    return v8

    :cond_8
    sub-int/2addr v2, v3

    return v2
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 213
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-le v2, v1, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 225
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const p0, 0x7fffffff

    :goto_1
    return p0
.end method

.method private static b(C)Z
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

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    .line 28
    check-cast p1, Lcom/coloros/settingslib/a;

    check-cast p2, Lcom/coloros/settingslib/a;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ne p1, p2, :cond_2

    return v4

    :cond_2
    if-eq v2, v3, :cond_3

    sub-int/2addr v2, v3

    return v2

    .line 4059
    :cond_3
    iget-boolean v2, p0, Lcom/coloros/settings/feature/a/a;->d:Z

    const/4 v3, -0x1

    const-string v5, "AppNameComparator"

    if-eqz v2, :cond_11

    .line 5232
    invoke-interface {p1}, Lcom/coloros/settingslib/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 5233
    invoke-interface {p2}, Lcom/coloros/settingslib/a;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_10

    .line 5237
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_10

    .line 5238
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v6, :cond_f

    .line 5243
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_f

    .line 5244
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 5250
    invoke-static {v7}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v5

    .line 5251
    invoke-static {v4}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v8

    if-ne v5, v0, :cond_4

    .line 5301
    invoke-static {v7}, Lcom/coloros/settings/f/c;->a(C)C

    move-result v7

    :cond_4
    if-ne v8, v0, :cond_5

    .line 6301
    invoke-static {v4}, Lcom/coloros/settings/f/c;->a(C)C

    move-result v4

    .line 5260
    :cond_5
    invoke-static {v7}, Lcom/coloros/settings/feature/a/a;->b(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5261
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-interface {p1, v9}, Lcom/coloros/settingslib/a;->a(C)V

    .line 5263
    :cond_6
    invoke-static {v4}, Lcom/coloros/settings/feature/a/a;->b(C)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 5264
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-interface {p2, p1}, Lcom/coloros/settingslib/a;->a(C)V

    :cond_7
    if-ne v5, v0, :cond_8

    if-ne v8, v0, :cond_8

    .line 5268
    iget-object p1, p0, Lcom/coloros/settings/feature/a/a;->c:Ljava/text/Collator;

    invoke-virtual {p1, v2, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-ne v5, v1, :cond_a

    if-ne v8, v0, :cond_a

    .line 5270
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 5271
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p2, p1, :cond_9

    return v3

    :cond_9
    sub-int/2addr p1, p2

    return p1

    :cond_a
    if-ne v5, v0, :cond_c

    if-ne v8, v1, :cond_c

    .line 5278
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 5279
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p2, p1, :cond_b

    return v1

    :cond_b
    sub-int/2addr p1, p2

    return p1

    :cond_c
    if-eq v5, v8, :cond_d

    sub-int/2addr v5, v8

    return v5

    :cond_d
    if-ne v5, v8, :cond_e

    if-ne v5, v1, :cond_e

    .line 5289
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 5290
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-eq p1, p2, :cond_e

    sub-int/2addr p1, p2

    return p1

    .line 5297
    :cond_e
    :goto_2
    invoke-static {v2, v6}, Lcom/coloros/settings/feature/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 5246
    :cond_f
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "baseName2="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5240
    :cond_10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "baseName1="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 7075
    :cond_11
    invoke-interface {p1}, Lcom/coloros/settingslib/a;->b()Ljava/lang/String;

    move-result-object p1

    .line 7076
    invoke-interface {p2}, Lcom/coloros/settingslib/a;->b()Ljava/lang/String;

    move-result-object p2

    .line 7080
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 7081
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7086
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 7087
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 7092
    invoke-static {v0}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v3

    .line 7093
    invoke-static {v2}, Lcom/coloros/settings/feature/a/a;->a(C)I

    move-result v4

    if-eq v3, v4, :cond_12

    sub-int/2addr v3, v4

    return v3

    :cond_12
    if-ne v3, v4, :cond_14

    if-ne v3, v1, :cond_14

    .line 7098
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 7099
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v1, v3, :cond_13

    if-eq v0, v2, :cond_13

    sub-int/2addr v2, v0

    return v2

    :cond_13
    if-eq v1, v3, :cond_14

    sub-int/2addr v1, v3

    return v1

    .line 7112
    :cond_14
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_15
    const-string p1, "baseNameWithExt2.length==0"

    .line 7089
    invoke-static {v5, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_16
    const-string p1, "baseNameWithExt1.length==0"

    .line 7083
    invoke-static {v5, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
