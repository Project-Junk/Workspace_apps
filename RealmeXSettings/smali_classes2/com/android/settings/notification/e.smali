.class public final Lcom/android/settings/notification/e;
.super Lcom/android/settingslib/core/a;
.source "BootSoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/notification/e;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boot_sounds"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x1

    const-string v1, "persist.sys.bootanim.play_sound"

    .line 48
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "boot_sounds"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boot_sounds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 56
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "persist.sys.bootanim.play_sound"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isAvailable()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/e;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
