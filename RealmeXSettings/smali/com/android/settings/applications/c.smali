.class public final Lcom/android/settings/applications/c;
.super Landroid/database/ContentObserver;
.source "AppRecommendedController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/c$c;,
        Lcom/android/settings/applications/c$b;,
        Lcom/android/settings/applications/c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/preference/PreferenceScreen;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 106
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 101
    iput-object p2, p0, Lcom/android/settings/applications/c;->c:Ljava/lang/Boolean;

    .line 102
    iput-object p2, p0, Lcom/android/settings/applications/c;->d:Ljava/lang/Boolean;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/c;->a()Z

    move-result p1

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "marketInstalled = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppRecommendedController"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "coloros_settings_recommend_app_visibility"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getMarketPackage = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p1, Lcom/android/settings/applications/c$a;

    invoke-direct {p0}, Lcom/android/settings/applications/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/applications/c$a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/c;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.heytap.market"

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oppo.market"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/c;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    const-string v1, "com.heytap.market"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/c;->d:Ljava/lang/Boolean;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/c;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/c;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    const-string v1, "com.oppo.market"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/c;->c:Ljava/lang/Boolean;

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onChange(Z)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/c;->b:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "coloros_settings_recommend_app_visibility"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/android/settings/applications/c;->b:Landroidx/preference/PreferenceScreen;

    const-string v0, "category_app_recommend"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/settings/applications/c;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method
