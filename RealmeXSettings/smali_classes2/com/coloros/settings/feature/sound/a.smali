.class public interface abstract Lcom/coloros/settings/feature/sound/a;
.super Ljava/lang/Object;
.source "IUpdateRingtone.java"


# direct methods
.method private static synthetic a(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic c(Landroidx/preference/Preference;)V
    .locals 3

    .line 30
    invoke-interface {p0}, Lcom/coloros/settings/feature/sound/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-interface {p0, p1}, Lcom/coloros/settings/feature/sound/a;->b(Landroidx/preference/Preference;)Z

    move-result v1

    .line 32
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/coloros/settings/feature/sound/-$$Lambda$a$F4KWl3kYEX2tzeTtoOpDMdC-TH8;

    invoke-direct {v1, p1, v0}, Lcom/coloros/settings/feature/sound/-$$Lambda$a$F4KWl3kYEX2tzeTtoOpDMdC-TH8;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$F4KWl3kYEX2tzeTtoOpDMdC-TH8(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/sound/a;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$vNgc02meMZw96oHX2MrqGh2IZ2Q(Lcom/coloros/settings/feature/sound/a;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/sound/a;->c(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/sound/-$$Lambda$a$vNgc02meMZw96oHX2MrqGh2IZ2Q;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/sound/-$$Lambda$a$vNgc02meMZw96oHX2MrqGh2IZ2Q;-><init>(Lcom/coloros/settings/feature/sound/a;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(Landroidx/preference/Preference;)Z
    .locals 1

    .line 39
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/android/settings/RingtonePreference;

    .line 1147
    iget-boolean p1, p1, Lcom/android/settings/RingtonePreference;->b:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
