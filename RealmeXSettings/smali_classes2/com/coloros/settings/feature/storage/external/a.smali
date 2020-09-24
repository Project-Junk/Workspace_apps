.class public final Lcom/coloros/settings/feature/storage/external/a;
.super Lcom/coloros/settings/feature/storage/controller/b;
.source "ColorExternalVolumeMediaController.java"


# instance fields
.field d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/controller/b;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;)V

    .line 40
    iput-boolean p3, p0, Lcom/coloros/settings/feature/storage/external/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/feature/storage/a/b;)V
    .locals 5

    .line 75
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/external/a;->e:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    iget-wide v1, p1, Lcom/coloros/settings/feature/storage/a/b;->d:J

    iget-wide v3, p1, Lcom/coloros/settings/feature/storage/a/b;->g:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a(JJ)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    iget-object v1, p1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c(J)V

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    iget-object v1, p1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b(J)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    iget-object v1, p1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a(J)V

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    iget-wide v1, p1, Lcom/coloros/settings/feature/storage/a/b;->k:J

    .line 1245
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d(J)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a()V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/storage/controller/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/a;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1061
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    if-nez p1, :cond_1

    .line 1062
    new-instance p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc

    .line 1063
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    const v0, 0x7f0d00aa

    .line 1064
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 1065
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1066
    new-instance p1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->a:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/a;->b:Landroid/os/storage/VolumeInfo;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/external/a;->e:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/storage/VolumeInfo;Z)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    .line 1068
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->setOrder(I)V

    .line 1069
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/a;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1070
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
