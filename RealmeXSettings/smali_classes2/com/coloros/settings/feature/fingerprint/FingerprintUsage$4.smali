.class final Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$4;
.super Lcom/android/settings/search/a;
.source "FingerprintUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "fingerprint"

    .line 400
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 401
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p1

    const-string v1, "key_title"

    const-string v2, "fingerprint_encrypt_application"

    const-string v3, "fingerprint_encrypt_file_switch"

    const-string v4, "fingerprint_security_center_switch"

    const-string v5, "fingerprint_unlock"

    .line 402
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    .line 408
    aget-object v2, v1, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
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

    .line 341
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    .line 343
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f120c4e

    .line 344
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const v0, 0x7f1209c7

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const v0, 0x7f1209bd

    .line 349
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f12096e

    .line 351
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_7

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f121000

    .line 355
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1209f0

    .line 356
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fingerprint_encrypt_file_switch"

    const-string v3, "fingerprint_encrypt_application"

    const-string v4, "key_title"

    const-string v5, "fingerprint_security_center_switch"

    .line 357
    filled-new-array {v4, v3, v2, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 359
    new-array v6, v5, [Ljava/lang/String;

    .line 360
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const v1, 0x7f1209c2

    .line 361
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v1, 0x2

    const v8, 0x7f1209c3

    .line 362
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    const v1, 0x7f1209e2

    .line 363
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v6, v8

    .line 366
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_3

    move v5, v8

    :cond_3
    :goto_1
    const v1, 0x7f0809b5

    if-ge v7, v5, :cond_6

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 371
    aget-object v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    aget-object v8, v4, v7

    .line 372
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 376
    :cond_4
    new-instance v8, Lcom/android/settings/search/e;

    invoke-direct {v8, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 377
    aget-object v9, v4, v7

    iput-object v9, v8, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 378
    aget-object v9, v6, v7

    iput-object v9, v8, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 379
    iput-object v0, v8, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 380
    const-class v9, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 381
    iput v1, v8, Lcom/android/settings/search/e;->iconResId:I

    .line 382
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 384
    :cond_6
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "fingerprint_unlock"

    .line 385
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f1209e8

    .line 386
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 387
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 388
    const-class p1, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 389
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 390
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
