.class public Lcom/android/settings/dashboard/c;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/b;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Lcom/android/settingslib/core/instrumentation/d;

.field private final c:Lcom/android/settings/dashboard/a;

.field private final d:Landroid/content/pm/PackageManager;

.field private e:Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;)Lcom/android/settings/dashboard/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/c;->c:Lcom/android/settings/dashboard/a;

    .line 78
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/c;->d:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private static synthetic a(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic a(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V
    .locals 8

    .line 12130
    iget-object v0, p1, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 216
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 221
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12241
    iget-object p1, p1, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v3, "com.android.settings.icon_uri"

    .line 222
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object v3, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    .line 12320
    invoke-static {v3, p1, v1}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "com.android.settings.icon_package"

    .line 12324
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12325
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    const-string v6, "com.android.settings.icon"

    .line 12328
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 12333
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12334
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12335
    :cond_2
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 226
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to get icon from uri "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DashboardFeatureImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_4
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 230
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$c$cUc5aI7l5GDvccieabJKlbUcb9Y;

    invoke-direct {v0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$c$cUc5aI7l5GDvccieabJKlbUcb9Y;-><init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/h/c;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 4

    .line 14264
    iget-object p5, p0, Lcom/android/settings/dashboard/c;->d:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p5, p3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p5

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    if-nez p5, :cond_1

    .line 14240
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot resolve intent, skipping. "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DashboardFeatureImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 14243
    :cond_1
    iget-object p5, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-static {p5, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->a(Landroid/content/Context;Lcom/android/settingslib/h/c;)V

    .line 14245
    iget-object p5, p2, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    if-eqz p5, :cond_7

    .line 14372
    iget-object p5, p2, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v2, "all_profiles"

    if-eqz p5, :cond_2

    iget-object p5, p2, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v3, "com.android.settings.profile"

    .line 14373
    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_2
    move-object p5, v2

    :goto_1
    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    move-object p5, v2

    :goto_2
    const-string v2, "primary_profile_only"

    .line 14375
    invoke-static {p5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_3

    .line 14248
    :cond_4
    iget-object p5, p2, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ne p5, v1, :cond_5

    .line 14249
    iget-object p5, p0, Lcom/android/settings/dashboard/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {p5, v2, p3, p4}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 14250
    iget-object p2, p2, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v0, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_4

    :cond_5
    const-string p5, "android.intent.extra.USER"

    .line 14252
    invoke-virtual {p3, p5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p5

    check-cast p5, Landroid/os/UserHandle;

    if-eqz p5, :cond_6

    .line 14253
    iget-object v2, p2, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14254
    iget-object p2, p0, Lcom/android/settings/dashboard/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {p2, v2, p3, p4}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 14256
    invoke-virtual {p1, p3, v0, p5}, Landroidx/fragment/app/FragmentActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_4

    .line 14258
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->a(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/h/c;)V

    goto :goto_4

    .line 14246
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/android/settings/dashboard/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p5, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {p2, p5, p3, p4}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 14247
    invoke-virtual {p1, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4
    return v1
.end method

.method private synthetic b(Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V
    .locals 2

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 13241
    iget-object p1, p1, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    .line 188
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v1, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    .line 13351
    invoke-static {v1, p1, v0}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.android.settings.summary"

    .line 13352
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    :goto_0
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;

    invoke-direct {v0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$c$X3Bjw90o7zBH3uj87CYfMPnX1qg;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$BXdcdEEvQ-Z7Y_VymVy38FfQY74(Lcom/android/settings/dashboard/c;Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/c;->a(Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic lambda$HmaFrjeDXgZljuiyu_-2tf2hiWE(Lcom/android/settings/dashboard/c;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/h/c;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/dashboard/c;->a(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/h/c;Landroid/content/Intent;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$OndLLibq10RtcBUesQAzHTajiVg(Lcom/android/settings/dashboard/c;Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/c;->b(Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic lambda$X3Bjw90o7zBH3uj87CYfMPnX1qg(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/c;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$cUc5aI7l5GDvccieabJKlbUcb9Y(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/c;->a(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/settingslib/h/b;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->c:Lcom/android/settings/dashboard/a;

    iget-object v1, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/h/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/settingslib/h/c;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/h/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/h/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dashboard_tile_pref_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1130
    iget-object p1, p1, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/h/b;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->c:Lcom/android/settings/dashboard/a;

    iget-object v1, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/h/c;Ljava/lang/String;I)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/settingslib/h/c;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/settings/dashboard/c;->a(Lcom/android/settingslib/h/c;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1177
    :goto_0
    iget-object p6, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-virtual {p5, p6}, Lcom/android/settingslib/h/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p6

    if-eqz p6, :cond_2

    .line 1179
    invoke-virtual {p4, p6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1241
    :cond_2
    iget-object p6, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const v0, 0x7f121621

    if-eqz p6, :cond_3

    .line 2241
    iget-object p6, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    .line 1181
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_3

    .line 1184
    invoke-virtual {p4, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1186
    new-instance p6, Lcom/android/settings/dashboard/-$$Lambda$c$OndLLibq10RtcBUesQAzHTajiVg;

    invoke-direct {p6, p0, p5, p4}, Lcom/android/settings/dashboard/-$$Lambda$c$OndLLibq10RtcBUesQAzHTajiVg;-><init>(Lcom/android/settings/dashboard/c;Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V

    invoke-static {p6}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 1194
    :cond_3
    invoke-virtual {p4, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2272
    :goto_1
    iget-object p6, p0, Lcom/android/settings/dashboard/c;->e:Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;

    if-nez p6, :cond_4

    .line 2273
    const-class p6, Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;

    invoke-static {p6}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;

    iput-object p6, p0, Lcom/android/settings/dashboard/c;->e:Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;

    .line 2275
    :cond_4
    iget-object p6, p0, Lcom/android/settings/dashboard/c;->e:Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p6, v0}, Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;->needBindIcon(Z)Z

    move-result p6

    const/4 v1, 0x0

    if-eqz p6, :cond_f

    .line 3202
    invoke-virtual {p4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p6

    const-string v2, "com.android.settings.icon_uri"

    const/4 v3, 0x0

    if-eqz p6, :cond_9

    .line 3272
    iget-object v4, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-nez v4, :cond_5

    goto/16 :goto_3

    .line 3275
    :cond_5
    invoke-virtual {p5, p6}, Lcom/android/settingslib/h/c;->d(Landroid/content/Context;)V

    .line 3276
    invoke-virtual {p5, p6}, Lcom/android/settingslib/h/c;->e(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-nez v4, :cond_6

    .line 3278
    new-instance p6, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find ActivityInfo for "

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/settingslib/h/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "Tile"

    invoke-static {v0, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3282
    :cond_6
    iget-object v5, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v6, "com.android.settings.icon"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 3288
    iget-object v6, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3289
    iget v5, v4, Landroid/content/pm/ActivityInfo;->icon:I

    :cond_7
    if-eqz v5, :cond_9

    .line 3293
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 3311
    invoke-virtual {p5, p6}, Lcom/android/settingslib/h/c;->d(Landroid/content/Context;)V

    .line 3312
    iget-object v5, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-eqz v5, :cond_8

    iget-object v5, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v6, "com.android.settings.icon_tintable"

    .line 3313
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3314
    iget-object v5, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    :cond_8
    move v5, v3

    :goto_2
    if-eqz v5, :cond_a

    .line 3295
    new-array v0, v0, [I

    const v5, 0x1010429

    aput v5, v0, v3

    invoke-virtual {p6, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p6

    .line 3297
    invoke-virtual {p6, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 3298
    invoke-virtual {p6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3299
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    goto :goto_4

    :cond_9
    :goto_3
    move-object v4, v1

    :cond_a
    :goto_4
    if-eqz v4, :cond_e

    .line 3204
    invoke-virtual {p4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {v4, p6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    if-eqz p2, :cond_d

    .line 3205
    iget-object p2, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    .line 3206
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 4123
    iget-object v0, p5, Lcom/android/settingslib/h/c;->c:Ljava/lang/String;

    .line 3206
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 3207
    new-instance p2, Lcom/android/settingslib/widget/a;

    iget-object v0, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    invoke-direct {p2, v0, p6}, Lcom/android/settingslib/widget/a;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 3208
    move-object p6, p2

    check-cast p6, Lcom/android/settingslib/widget/a;

    iget-object v0, p0, Lcom/android/settings/dashboard/c;->a:Landroid/content/Context;

    .line 5241
    iget-object v2, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    :try_start_0
    const-string v4, "com.android.settings.bg.argb"

    .line 5066
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_b

    const-string v5, "com.android.settings.bg.hint"

    .line 5070
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    .line 5073
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6123
    iget-object v4, p5, Lcom/android/settingslib/h/c;->c:Ljava/lang/String;

    .line 5074
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 5075
    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    :cond_b
    if-eqz v4, :cond_c

    .line 5080
    invoke-virtual {p6, v4}, Lcom/android/settingslib/widget/a;->a(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 5085
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set background color for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7123
    iget-object v3, p5, Lcom/android/settingslib/h/c;->c:Ljava/lang/String;

    .line 5085
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdaptiveHomepageIcon"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    :cond_c
    sget v2, Lcom/android/settingslib/widget/h$a;->homepage_generic_icon_background:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p6, v0}, Lcom/android/settingslib/widget/a;->a(I)V

    goto :goto_5

    :cond_d
    move-object p2, p6

    .line 3210
    :goto_5
    invoke-virtual {p4, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 7241
    :cond_e
    iget-object p2, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-eqz p2, :cond_f

    .line 8241
    iget-object p2, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    .line 3212
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3213
    new-instance p2, Lcom/android/settings/dashboard/-$$Lambda$c$BXdcdEEvQ-Z7Y_VymVy38FfQY74;

    invoke-direct {p2, p0, p5, p4}, Lcom/android/settings/dashboard/-$$Lambda$c$BXdcdEEvQ-Z7Y_VymVy38FfQY74;-><init>(Lcom/android/settings/dashboard/c;Lcom/android/settingslib/h/c;Landroidx/preference/Preference;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9241
    :cond_f
    :goto_6
    iget-object p2, p5, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-eqz p2, :cond_10

    const-string p6, "com.android.settings.FRAGMENT_CLASS"

    .line 129
    invoke-virtual {p2, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p6, "com.android.settings.intent.action"

    .line 130
    invoke-virtual {p2, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_10
    move-object p2, v1

    .line 132
    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_11

    .line 133
    invoke-virtual {p4, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_8

    .line 135
    :cond_11
    new-instance v6, Landroid/content/Intent;

    .line 10130
    iget-object p6, p5, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 135
    invoke-direct {v6, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p6, ":settings:source_metrics"

    .line 136
    invoke-virtual {v6, p6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_12

    .line 139
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_12
    new-instance p2, Lcom/android/settings/dashboard/-$$Lambda$c$HmaFrjeDXgZljuiyu_-2tf2hiWE;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p5

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/dashboard/-$$Lambda$c$HmaFrjeDXgZljuiyu_-2tf2hiWE;-><init>(Lcom/android/settings/dashboard/c;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/h/c;Landroid/content/Intent;I)V

    invoke-virtual {p4, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    :goto_8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p5}, Lcom/android/settingslib/h/c;->c()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 150
    invoke-virtual {p5}, Lcom/android/settingslib/h/c;->b()I

    move-result p2

    .line 11130
    iget-object p3, p5, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 151
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    if-ne p7, p1, :cond_13

    goto :goto_9

    :cond_13
    add-int/2addr p2, p7

    .line 156
    invoke-virtual {p4, p2}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_a

    .line 154
    :cond_14
    :goto_9
    invoke-virtual {p4, p2}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_15
    :goto_a
    return-void
.end method
