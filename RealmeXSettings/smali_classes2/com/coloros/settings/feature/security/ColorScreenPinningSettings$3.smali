.class final Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$3;
.super Lcom/android/settings/search/a;
.source "ColorScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 259
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1213f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bc;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f120fe1
        0x7f120fbb
    .end array-data
.end method


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0809d3

    goto :goto_0

    :cond_0
    const v0, 0x7f0809a1

    .line 270
    :goto_0
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-static {}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f1212f8

    .line 272
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 273
    iput v0, v1, Lcom/android/settings/search/e;->iconResId:I

    .line 275
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {v3, v4}, Lcom/coloros/settings/utils/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 276
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-static {}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f1212f9

    .line 282
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 283
    iput v0, v1, Lcom/android/settings/search/e;->iconResId:I

    .line 285
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 286
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p2
.end method
