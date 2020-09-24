.class public abstract Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;
.super Lcom/android/sdk/LocalePicker;
.source "ColorLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/sdk/LocalePicker;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "ColorLocalePicker"


# instance fields
.field protected b:Lcom/coloros/settings/feature/language/localepicker/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/settings/feature/language/localepicker/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected c:Landroid/view/MenuItem;

.field protected d:Landroid/view/MenuItem;

.field protected e:Landroid/content/Context;

.field private g:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/sdk/LocalePicker;-><init>()V

    .line 63
    new-instance v0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;-><init>(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->g:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 272
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 275
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    aget-object p0, p2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "settings_shared"

    .line 7026
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7028
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "is_internal_restart"

    .line 7029
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7030
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "20012"

    const-string v4, "language_select"

    .line 158
    invoke-static {p0, v3, v4, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7272
    new-instance p0, Landroid/os/LocaleList;

    new-array v1, v2, [Ljava/util/Locale;

    aput-object p1, v1, v0

    invoke-direct {p0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 7282
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7283
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 7285
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 7286
    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 7288
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    const-string p0, "com.android.providers.settings"

    .line 7290
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    invoke-static {p1}, Lcom/coloros/settings/utils/e;->a(Ljava/util/Locale;)V

    .line 164
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->a()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1207fb

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 13228
    :cond_0
    new-instance p1, Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p2, "language"

    .line 14194
    iput-object p2, p1, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    const/4 p2, 0x0

    .line 13230
    invoke-virtual {p1, p2, p2}, Lcom/coloros/settings/feature/password/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->g:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;

    const/4 p2, 0x1

    .line 14216
    iput-boolean p2, p1, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;->a:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->c()V

    return-void
.end method

.method protected static a(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)[Lcom/android/sdk/LocalePicker$a;
    .locals 10

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-static {p0}, Lcom/coloros/settings/feature/language/region/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 289
    array-length v2, p1

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 294
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_0

    .line 296
    aget-object v7, p1, v6

    .line 297
    invoke-static {v7}, Lcom/coloros/settings/feature/language/region/a;->a(Lcom/android/sdk/LocalePicker$a;)Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 299
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    .line 309
    aget-object v5, p1, v4

    .line 310
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    aget-object v6, p1, v4

    invoke-static {v6}, Lcom/coloros/settings/feature/language/region/a;->a(Lcom/android/sdk/LocalePicker$a;)Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_4

    .line 312
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 313
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 314
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 315
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 323
    :cond_5
    new-array p0, v2, [Lcom/android/sdk/LocalePicker$a;

    move p1, v3

    .line 324
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    .line 325
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/sdk/LocalePicker$a;

    aput-object v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 328
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_7

    add-int v2, v3, p1

    .line 329
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/sdk/LocalePicker$a;

    aput-object v4, p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-object p0
.end method

.method protected static b(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)[Lcom/android/sdk/LocalePicker$a;
    .locals 16

    move-object/from16 v0, p1

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 345
    array-length v4, v0

    .line 349
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    const/4 v6, -0x1

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    .line 351
    aget-object v12, v0, v7

    .line 10081
    iget-object v13, v12, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 353
    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 11081
    iget-object v14, v12, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 354
    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "TW"

    .line 355
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v5, "zh"

    if-eqz v15, :cond_0

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    const-string v15, "HK"

    .line 357
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    const-string v15, "CN"

    .line 359
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f1214e7

    .line 360
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12077
    iput-object v5, v12, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    move v11, v7

    goto :goto_1

    :cond_2
    const-string v5, "US"

    .line 362
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "en"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f121798

    .line 363
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13077
    iput-object v5, v12, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    move v8, v7

    goto :goto_1

    .line 366
    :cond_3
    aget-object v5, v0, v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-eq v8, v6, :cond_5

    .line 370
    aget-object v3, v0, v8

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eq v9, v6, :cond_6

    .line 374
    aget-object v3, v0, v9

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    if-eq v10, v6, :cond_7

    .line 378
    aget-object v3, v0, v10

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    if-eq v11, v6, :cond_8

    .line 382
    aget-object v0, v0, v11

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    :cond_8
    new-array v0, v4, [Lcom/android/sdk/LocalePicker$a;

    move v3, v5

    .line 386
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 387
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/sdk/LocalePicker$a;

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 390
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v5, v3, :cond_a

    add-int v4, v5, v1

    .line 391
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/sdk/LocalePicker$a;

    aput-object v6, v0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    return-object v0
.end method

.method private c()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/coloros/settings/feature/language/localepicker/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sdk/LocalePicker$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->a:Lcom/android/sdk/LocalePicker$b;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8073
    iget-object v2, v0, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    .line 248
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9073
    iget-object v2, v0, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    const-string v3, "system_language_change"

    .line 249
    invoke-static {v1, v3, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->a:Lcom/android/sdk/LocalePicker$b;

    .line 9081
    iget-object v2, v0, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 251
    invoke-interface {v1, v2}, Lcom/android/sdk/LocalePicker$b;->a(Ljava/util/Locale;)V

    .line 255
    :cond_2
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9159
    invoke-static {v1}, Lcom/coloros/settings/utils/x;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/language/region/a;->a(Landroid/content/Context;Lcom/android/sdk/LocalePicker$a;)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$vOPtI-mQfwlLZPi6A8pusvVEDHA(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/widget/ListView;I)V
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p3, 0x37

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/sdk/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->setHasOptionsMenu(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->e:Landroid/content/Context;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e0001

    .line 113
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a03d8

    .line 114
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->c:Landroid/view/MenuItem;

    const p2, 0x7f0a03d7

    .line 115
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->d:Landroid/view/MenuItem;

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->c:Landroid/view/MenuItem;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d010e

    .line 75
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    if-eqz p1, :cond_0

    const p2, 0x7f0a020e

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x102000a

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p3}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->a(Landroid/widget/ListView;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lcom/android/sdk/LocalePicker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1168
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/language/localepicker/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/sdk/LocalePicker$a;

    const v0, 0x7f121658

    .line 1169
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz p1, :cond_0

    .line 2081
    iget-object v3, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    if-eqz v3, :cond_0

    .line 3081
    iget-object v2, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 1173
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 4081
    iget-object v3, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 1174
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "HK"

    .line 1176
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "zh"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    const-string v4, "TW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1177
    new-array p1, v1, [Ljava/lang/Object;

    const v2, 0x7f120813

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v4, "CN"

    .line 1178
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1179
    new-array p1, v1, [Ljava/lang/Object;

    const v2, 0x7f120810

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1181
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 1182
    invoke-static {v4, v2, v3}, Lcom/coloros/settings/utils/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1184
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v6

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 5081
    iget-object v2, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    if-eqz v2, :cond_5

    .line 1186
    new-array v2, v1, [Ljava/lang/Object;

    .line 6081
    iget-object p1, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 1186
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->g:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;

    .line 6216
    iput-boolean v6, p1, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;->a:Z

    .line 1190
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121659

    .line 1191
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x1080027

    .line 1192
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1193
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/coloros/settings/feature/language/localepicker/-$$Lambda$ColorLocalePicker$vOPtI-mQfwlLZPi6A8pusvVEDHA;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/language/localepicker/-$$Lambda$ColorLocalePicker$vOPtI-mQfwlLZPi6A8pusvVEDHA;-><init>(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;)V

    .line 1194
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    .line 1202
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->g:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;

    .line 1203
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1204
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    .line 1206
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->e:Landroid/content/Context;

    const v2, 0x7f060087

    .line 1207
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_6
    return v1

    .line 1137
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1139
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a03d7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
