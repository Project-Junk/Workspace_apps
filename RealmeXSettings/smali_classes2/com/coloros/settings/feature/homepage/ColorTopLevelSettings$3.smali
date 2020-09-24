.class final Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$3;
.super Lcom/android/settings/search/a;
.source "ColorTopLevelSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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

    .line 269
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const v1, 0x7f0809b3

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "google_settings_exp"

    .line 272
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f0809a2

    .line 273
    iput v2, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f121703

    .line 274
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 275
    iget-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v2, "com.android.settings.action.EXTRA_SETTINGS"

    .line 276
    iput-object v2, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    .line 277
    iput-object v2, v0, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 278
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "data_language_key"

    .line 281
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 282
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f121656

    .line 283
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 284
    iget-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v2, "android.settings.LOCALE_SETTINGS"

    .line 285
    iput-object v2, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 286
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "data_update_key"

    .line 291
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f0809c1

    .line 292
    iput v2, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f121505

    .line 293
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 294
    iget-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 295
    invoke-static {}, Lcom/coloros/settings/utils/bh;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.settings.SYSTEM_UPDATE_SETTINGS"

    goto :goto_1

    :cond_1
    const-string v2, "com.oppo.ota.MAIN"

    :goto_1
    iput-object v2, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 296
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "mult_app_key"

    .line 301
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f0809bd

    .line 302
    iput v2, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f120df6

    .line 303
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 304
    iget-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v2, "oppo.intent.action.OPPO_MULTI_APP"

    .line 305
    iput-object v2, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 306
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_3
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "toggle_airplane"

    .line 310
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f080988

    .line 311
    iput v2, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f120132

    .line 312
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 313
    iget-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v2, "android.settings.SETTINGS"

    .line 314
    iput-object v2, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 315
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "oppo_nearme_center_key"

    .line 324
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f0807e6

    .line 325
    iput v2, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f120e02

    .line 326
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 327
    iget-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v2, "com.usercenter.action.activity.firstin"

    .line 328
    iput-object v2, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 329
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_4
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "language_update"

    .line 333
    iput-object v2, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 334
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v1, 0x7f120be4

    .line 335
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 336
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 337
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    .line 342
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {p1, v1}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    :goto_2
    const-string p1, "coloros.intent.action.LANGUAGE_LAUNCH"

    .line 347
    iput-object p1, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :array_0
    .array-data 4
        0x7f121656
        0x7f120bda
        0x7f120be4
    .end array-data

    :array_1
    .array-data 4
        0x7f121656
        0x7f120be4
    .end array-data
.end method
