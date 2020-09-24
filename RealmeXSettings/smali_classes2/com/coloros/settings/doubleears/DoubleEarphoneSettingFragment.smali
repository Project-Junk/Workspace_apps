.class public Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DoubleEarphoneSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;
.implements Lcom/coloros/settings/doubleears/a/a;
.implements Lcom/coloros/settings/doubleears/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 66
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    .line 67
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Z)V

    .line 69
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    .line 70
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;->a(Z)V

    .line 72
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    .line 73
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->a(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 110
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    .line 111
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Z)V

    .line 112
    invoke-virtual {v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->d(Z)V

    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 144
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    .line 145
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->b(Z)V

    return-void
.end method

.method private g(Z)V
    .locals 1

    .line 149
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    .line 150
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DoubleEarphoneSettingFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 4208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4209
    new-instance v2, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-direct {v2, p1, p0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/b;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4210
    new-instance v2, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-direct {v2, p1, p0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4211
    new-instance v2, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    invoke-direct {v2, p1, p0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4212
    new-instance v2, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    invoke-direct {v2, p1, p0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4213
    new-instance v2, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/doubleears/controller/LabLikeDislikeController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 4215
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ar;->a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/util/List;)V

    :cond_0
    return-object v1
.end method

.method public final a(I)V
    .locals 4

    .line 80
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->c(Z)V

    .line 81
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;->b(Z)V

    .line 82
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->c(Z)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 84
    const-class p1, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->c(Z)V

    .line 85
    const-class p1, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;->b(Z)V

    :cond_3
    return-void
.end method

.method public final a(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1120
    invoke-static {p1}, Lcom/coloros/settings/doubleears/a/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    invoke-direct {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->f(Z)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_2

    .line 1122
    invoke-static {p1}, Lcom/coloros/settings/doubleears/a/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "double_earphone_headset"

    .line 1170
    invoke-virtual {p0, v2}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 1171
    instance-of v3, v2, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v3, :cond_1

    .line 1172
    check-cast v2, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    .line 2108
    iget-boolean v2, v2, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 1124
    invoke-direct {p0, v1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->f(Z)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 1127
    invoke-static {p1}, Lcom/coloros/settings/doubleears/a/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1128
    invoke-direct {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->f(Z)V

    goto :goto_3

    :cond_3
    if-nez p2, :cond_5

    .line 1129
    invoke-static {p1}, Lcom/coloros/settings/doubleears/a/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "double_earphone_media_bluetooth"

    .line 2179
    invoke-virtual {p0, v2}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 2180
    instance-of v3, v2, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v3, :cond_4

    .line 2181
    check-cast v2, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    .line 3108
    iget-boolean v2, v2, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a:Z

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    .line 1131
    invoke-direct {p0, v1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->f(Z)V

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 1134
    invoke-static {p1}, Lcom/coloros/settings/doubleears/a/a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1135
    invoke-direct {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->g(Z)V

    .line 3154
    const-class p1, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;

    .line 4078
    iget-object p2, p1, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarLineCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 4079
    instance-of p2, p1, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz p2, :cond_7

    .line 4080
    check-cast p1, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->c(Z)V

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    .line 1137
    invoke-static {p1}, Lcom/coloros/settings/doubleears/a/a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1138
    invoke-direct {p0, v1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->g(Z)V

    .line 4160
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_8

    .line 4163
    invoke-static {p0, v1}, Lcom/coloros/settings/doubleears/b/a;->a(Landroidx/preference/PreferenceFragmentCompat;I)I

    move-result p2

    .line 4164
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "DualHeadPhone="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 99
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    .line 100
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->d(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 92
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    .line 93
    invoke-virtual {v0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Z)V

    .line 94
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->e(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->e(Z)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150102

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0, p0}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
