.class public Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsProfilesController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/d/s$c;


# instance fields
.field private d:Lcom/android/settingslib/d/q;

.field private e:Lcom/android/settingslib/d/s;

.field private f:Lcom/android/settingslib/d/g;

.field private g:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/q;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 64
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->d:Lcom/android/settingslib/d/q;

    .line 65
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->d:Lcom/android/settingslib/d/q;

    .line 1162
    iget-object p1, p1, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 65
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->e:Lcom/android/settingslib/d/s;

    .line 66
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 67
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/settingslib/d/r;)Landroidx/preference/TwoStatePreference;
    .locals 1

    .line 88
    new-instance v0, Landroidx/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setKey(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 1396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 90
    invoke-interface {p2, p1}, Lcom/android/settingslib/d/r;->h(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 91
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    invoke-interface {p2}, Lcom/android/settingslib/d/r;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setOrder(I)V

    return-object v0
.end method

.method private a(Landroidx/preference/TwoStatePreference;Lcom/android/settingslib/d/r;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 2396
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 102
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->j()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 103
    instance-of v1, p2, Lcom/android/settingslib/d/u;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 106
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/d/y;

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 109
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/d/w;

    if-eqz v1, :cond_5

    .line 110
    invoke-interface {p2, v0}, Lcom/android/settingslib/d/r;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 113
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settingslib/d/r;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 116
    :goto_3
    instance-of p1, p2, Lcom/android/settingslib/d/a;

    if-eqz p1, :cond_d

    .line 117
    check-cast p2, Lcom/android/settingslib/d/a;

    .line 118
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    const-string v1, "A2dpProfileHighQualityAudio"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Lcom/android/settingslib/d/a;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2, v0}, Lcom/android/settingslib/d/a;->f(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 122
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setVisible(Z)V

    .line 123
    invoke-virtual {p2, v0}, Lcom/android/settingslib/d/a;->g(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 3225
    sget-boolean v1, Lcom/android/settingslib/d/a;->a:Z

    const-string v5, "A2dpProfile"

    if-eqz v1, :cond_6

    const-string v1, " execute isHighQualityAudioEnabled()"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_6
    iget-object v1, p2, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_7

    .line 3227
    sget-boolean p2, Lcom/android/settingslib/d/a;->a:Z

    if-eqz p2, :cond_b

    const-string p2, "mService is null."

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3230
    :cond_7
    iget-object v1, p2, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dp;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    if-ne v1, v2, :cond_b

    :goto_4
    move v4, v2

    goto :goto_5

    .line 3233
    :cond_8
    invoke-virtual {p2, v0}, Lcom/android/settingslib/d/a;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 3234
    invoke-virtual {p2, v0}, Lcom/android/settingslib/d/a;->f(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 3241
    iget-object v3, p2, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 3242
    iget-object p2, p2, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    :cond_a
    if-eqz v1, :cond_b

    .line 3245
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_4

    .line 124
    :cond_b
    :goto_5
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 125
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    invoke-virtual {p2}, Lcom/android/settingslib/d/g;->j()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 127
    :cond_c
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setVisible(Z)V

    :cond_d
    return-void
.end method

.method private a(Lcom/android/settingslib/d/r;)V
    .locals 2

    .line 222
    instance-of v0, p1, Lcom/android/settingslib/d/a;

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 11396
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 226
    check-cast p1, Lcom/android/settingslib/d/a;

    .line 12088
    iget-boolean v1, p1, Lcom/android/settingslib/d/a;->c:Z

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/a;->f(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    .line 229
    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "A2dpProfileHighQualityAudio"

    .line 230
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    .line 232
    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/d/a;)V

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/d/a;Landroidx/preference/Preference;)Z
    .locals 3

    .line 233
    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result p2

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 13396
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 14252
    sget-boolean v1, Lcom/android/settingslib/d/a;->a:Z

    const-string v2, "A2dpProfile"

    if-eqz v1, :cond_0

    const-string v1, " execute setHighQualityAudioEnabled()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14256
    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_1

    .line 14257
    sget-boolean p1, Lcom/android/settingslib/d/a;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "mService is null."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14260
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v0, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 14261
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/a;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_2

    .line 14265
    iget-object p1, p1, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 14267
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/r;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->l()Ljava/util/List;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 8396
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 198
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->d:Lcom/android/settingslib/d/q;

    .line 9162
    iget-object v2, v2, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 9437
    iget-object v2, v2, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->d:Lcom/android/settingslib/d/q;

    .line 10162
    iget-object v2, v2, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 10441
    iget-object v2, v2, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    .line 206
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$DsfREWgmHZE_4IAwlrtaE6UVMD8(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/d/a;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a(Lcom/android/settingslib/d/a;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 269
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/r;

    .line 270
    invoke-interface {v1}, Lcom/android/settingslib/d/r;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/TwoStatePreference;

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a(Landroid/content/Context;Lcom/android/settingslib/d/r;)Landroidx/preference/TwoStatePreference;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 278
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a(Lcom/android/settingslib/d/r;)V

    .line 280
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a(Landroidx/preference/TwoStatePreference;Lcom/android/settingslib/d/r;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 12742
    iget-object v0, v0, Lcom/android/settingslib/d/g;->f:Ljava/util/List;

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/r;

    .line 283
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->g:Landroidx/preference/PreferenceCategory;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_profiles"

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onPause()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->e:Lcom/android/settingslib/d/s;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/s;->b(Lcom/android/settingslib/d/s$c;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->e:Lcom/android/settingslib/d/s;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3259
    iget-object v0, v0, Lcom/android/settingslib/d/s;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/r;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->d:Lcom/android/settingslib/d/q;

    .line 4162
    iget-object v0, v0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 4437
    iget-object v0, v0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    .line 174
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/d/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 180
    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 181
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 5137
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 5396
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 5138
    instance-of v2, v0, Lcom/android/settingslib/d/y;

    if-eqz v2, :cond_2

    .line 5139
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_1

    .line 5143
    :cond_2
    instance-of v2, v0, Lcom/android/settingslib/d/u;

    if-eqz v2, :cond_3

    .line 5144
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 5146
    :cond_3
    invoke-interface {v0, v1, v3}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 5147
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 6304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/settingslib/d/g;->j:J

    .line 6305
    invoke-virtual {v1, v0}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/r;)V

    .line 6485
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->m()V

    goto :goto_1

    .line 7154
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    .line 7396
    iget-object v2, v2, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 7155
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->f:Lcom/android/settingslib/d/g;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;)V

    .line 7156
    invoke-interface {v0, v2, v1}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 7157
    instance-of v1, v0, Lcom/android/settingslib/d/u;

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    .line 7158
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_1

    .line 7159
    :cond_5
    instance-of v1, v0, Lcom/android/settingslib/d/y;

    if-eqz v1, :cond_6

    .line 7160
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 186
    :cond_6
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->a(Landroidx/preference/TwoStatePreference;Lcom/android/settingslib/d/r;)V

    return v3
.end method

.method public onResume()V
    .locals 1

    .line 249
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onResume()V

    .line 250
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->e:Lcom/android/settingslib/d/s;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/s$c;)V

    return-void
.end method
