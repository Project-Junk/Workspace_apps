.class public abstract Lcom/android/settings/notification/q;
.super Lcom/android/settingslib/core/a;
.source "RingtonePreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic a(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic c(Landroidx/preference/Preference;)V
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/android/settings/notification/q;->mContext:Landroid/content/Context;

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/notification/q;->a()I

    move-result v1

    .line 1053
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/q;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1064
    new-instance v1, Lcom/android/settings/notification/-$$Lambda$q$cI--JveISpHiHkJTPbitCDHuWV4;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/notification/-$$Lambda$q$cI--JveISpHiHkJTPbitCDHuWV4;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$cI--JveISpHiHkJTPbitCDHuWV4(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/q;->a(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$m8mc9gjMpLxtCznt_uNl6s75guM(Lcom/android/settings/notification/q;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/q;->c(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;-><init>(Lcom/android/settings/notification/q;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
