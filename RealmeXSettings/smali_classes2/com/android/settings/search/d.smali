.class public final Lcom/android/settings/search/d;
.super Ljava/lang/Object;
.source "SearchFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search/c;


# instance fields
.field private a:Lcom/android/settingslib/o/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.heytap.quicksearchbox"

    const-string v2, "com.heytap.speechassist"

    .line 100
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    .line 102
    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    move p0, v1

    :goto_1
    const/4 v3, 0x2

    if-ge p0, v3, :cond_3

    .line 104
    aget-object v3, v0, p0

    .line 105
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/search/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1117
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android-app"

    .line 1118
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1120
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1121
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.extra.REFERRER"

    .line 92
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/settingslib/o/a;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/search/d;->a:Lcom/android/settingslib/o/a;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/settings/search/f;

    invoke-direct {v0}, Lcom/android/settings/search/f;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/d;->a:Lcom/android/settingslib/o/a;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/d;->a:Lcom/android/settingslib/o/a;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 45
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/search/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 49
    :goto_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/search/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Search result intents must be called with from a whitelisted package."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void

    .line 42
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExternalSettingsTrampoline intents must be called with startActivityForResult"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/search/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 68
    :goto_1
    invoke-static {p1, p2}, Lcom/android/settings/search/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Search result intents must be called with from a whitelisted package."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExternalSettingsTrampoline intents must be called with startActivityForResult"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
