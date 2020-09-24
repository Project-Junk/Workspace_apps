.class public final Lcom/android/settings/deviceinfo/g;
.super Lcom/android/settingslib/core/a;
.source "StorageSizePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/g;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/g;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/g;->mContext:Landroid/content/Context;

    const-string v2, "ext_ram_total_size"

    invoke-static {v1, v2}, Lcom/android/settings/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "displayPreference: ramSize = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageSizePreferenceController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f12077e

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1091
    new-instance v4, Landroidx/preference/Preference;

    invoke-direct {v4, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setOrder(I)V

    const-string v0, "key_storage_total_size1"

    .line 77
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 79
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/deviceinfo/g;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12128d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/deviceinfo/g;->mContext:Landroid/content/Context;

    const-string v0, "ext_rom_total_size"

    invoke-static {p1, v0}, Lcom/android/settings/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayPreference: romSize = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/g;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_storage_total_size"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/deviceinfo/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
