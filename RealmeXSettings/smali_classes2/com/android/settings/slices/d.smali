.class public final Lcom/android/settings/slices/d;
.super Ljava/lang/Object;
.source "SliceBuilderUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;
    .locals 2

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2107
    iget-object p1, p2, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 171
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-class v0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 172
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 3079
    iget-object v0, p2, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    const-string v1, "com.android.settings.slice.extra.key"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3119
    iget-boolean p2, p2, Lcom/android/settings/slices/e;->k:Z

    const-string v0, "com.android.settings.slice.extra.platform"

    .line 174
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x10000000

    .line 175
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    .line 231
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v2, Lcom/android/settings/core/f;

    invoke-direct {v2, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {v2, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 235
    invoke-virtual {p0, p3}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 236
    invoke-virtual {p0, p4}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object p0

    .line 238
    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    .line 240
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public static a(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "/"

    .line 141
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 146
    array-length v1, p0

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 150
    aget-object v0, p0, v0

    const-string v1, "intent"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 153
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/slices/e;)Lcom/android/settings/core/a;
    .locals 1

    .line 1111
    iget-object v0, p1, Lcom/android/settings/slices/e;->i:Ljava/lang/String;

    .line 2079
    iget-object p1, p1, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    .line 162
    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/a;
    .locals 0

    .line 356
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/a;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 361
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/core/a;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/core/a;Lcom/android/settings/slices/e;)Ljava/lang/CharSequence;
    .locals 1

    .line 196
    invoke-virtual {p1}, Lcom/android/settings/core/a;->useDynamicSliceSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/android/settings/core/a;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 4087
    :cond_0
    iget-object p1, p2, Lcom/android/settings/slices/e;->c:Ljava/lang/String;

    .line 202
    invoke-static {p0, p1}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 4091
    :cond_1
    iget-object p1, p2, Lcom/android/settings/slices/e;->d:Ljava/lang/CharSequence;

    .line 208
    invoke-static {p0, p1}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5083
    iget-object p0, p2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 208
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/android/settings/slices/e;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/slices/e;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8083
    iget-object v1, p0, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 399
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9083
    iget-object v1, p0, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 9091
    iget-object v2, p0, Lcom/android/settings/slices/e;->d:Ljava/lang/CharSequence;

    .line 401
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10091
    iget-object v1, p0, Lcom/android/settings/slices/e;->d:Ljava/lang/CharSequence;

    .line 402
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10095
    :cond_0
    iget-object p0, p0, Lcom/android/settings/slices/e;->e:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, ","

    .line 407
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 408
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/settings/slices/-$$Lambda$d$jn97CrtyGiNge5uLeYuMfC8TwK8;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$d$jn97CrtyGiNge5uLeYuMfC8TwK8;

    .line 409
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 410
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 411
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 384
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f121621

    .line 388
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f121624

    .line 390
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 392
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;
    .locals 1

    .line 183
    invoke-static {p0, p1}, Lcom/android/settings/slices/d;->c(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/content/Intent;
    .locals 4

    .line 245
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 6079
    iget-object v1, p1, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    .line 245
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 6103
    iget-object v1, p1, Lcom/android/settings/slices/e;->g:Ljava/lang/String;

    .line 7079
    iget-object v2, p1, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    .line 7091
    iget-object p1, p1, Lcom/android/settings/slices/e;->d:Ljava/lang/CharSequence;

    .line 248
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 246
    invoke-static {p0, v1, v2, p1, v3}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p1
.end method

.method static d(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 10099
    iget v0, p1, Lcom/android/settings/slices/e;->f:I

    const v1, 0x7f080813

    if-nez v0, :cond_0

    move v0, v1

    .line 449
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Falling back to settings icon because there is an error getting slice icon "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10107
    iget-object p1, p1, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 452
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SliceBuilder"

    .line 451
    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$jn97CrtyGiNge5uLeYuMfC8TwK8(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/slices/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
