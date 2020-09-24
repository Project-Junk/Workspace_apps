.class public Lcom/coloros/settings/feature/panel/VolumePanelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VolumePanelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;
    }
.end annotation


# instance fields
.field a:Landroidx/preference/PreferenceManager;

.field protected final b:Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Lcolor/support/v7/app/AlertDialog;

.field private e:Landroidx/preference/PreferenceScreen;

.field private f:Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

.field private g:Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

.field private h:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

.field private i:Lcom/coloros/settings/feature/panel/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;-><init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;

    .line 69
    new-instance v0, Lcom/coloros/settings/feature/panel/VolumePanelActivity$1;

    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/panel/VolumePanelActivity$1;-><init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->d:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 170
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 173
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result p1

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00a3

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a05d8

    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a021e

    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0a04af

    .line 91
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a04ae

    .line 92
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const v6, 0x7f1213fd

    .line 93
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    const v7, 0x7f120491

    .line 94
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(I)V

    if-eqz p1, :cond_0

    const v8, 0x7f121893

    .line 96
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 97
    new-instance v4, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity$2;-><init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v2, Lcom/coloros/settings/feature/panel/VolumePanelActivity$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity$3;-><init>(Lcom/coloros/settings/feature/panel/VolumePanelActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    .line 117
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_0
    new-instance v2, Landroidx/preference/PreferenceManager;

    invoke-direct {v2, p0}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->a:Landroidx/preference/PreferenceManager;

    .line 124
    iget-object v2, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->a:Landroidx/preference/PreferenceManager;

    const v3, 0x7f150067

    invoke-virtual {v2, p0, v3, v1}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    .line 126
    iget-object v1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    const-string v2, "volume_category"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 127
    new-instance v2, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v2, v1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 129
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 130
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1303b1

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 134
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    if-nez p1, :cond_1

    .line 136
    invoke-virtual {v0, v7, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1, v6, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f121899

    .line 138
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 141
    :cond_1
    invoke-virtual {v0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->d:Lcolor/support/v7/app/AlertDialog;

    .line 142
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 146
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->f:Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    .line 147
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->g:Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    .line 148
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->h:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    .line 150
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->f:Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->g:Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 152
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->h:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->f:Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$a;)V

    .line 155
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->g:Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$a;)V

    .line 156
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->h:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->b:Lcom/coloros/settings/feature/panel/VolumePanelActivity$a;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$a;)V

    .line 158
    new-instance p1, Lcom/coloros/settings/feature/panel/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    const-string v1, "ring_volume"

    .line 159
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    const-string v2, "media_volume"

    .line 160
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-direct {p1, p0, v0, v1}, Lcom/coloros/settings/feature/panel/a;-><init>(Landroid/app/Activity;Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->i:Lcom/coloros/settings/feature/panel/a;

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->f:Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 163
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->g:Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->h:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->e:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->d:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 186
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->i:Lcom/coloros/settings/feature/panel/a;

    .line 1158
    iget-boolean p1, p1, Lcom/coloros/settings/feature/panel/a;->g:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x19

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return p2

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->i:Lcom/coloros/settings/feature/panel/a;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    .line 2067
    invoke-virtual {p1}, Lcom/coloros/settings/feature/panel/a;->a()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    .line 2069
    iget-object v2, p1, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2070
    iget v4, p1, Lcom/coloros/settings/feature/panel/a;->d:I

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_0

    .line 2073
    :cond_1
    iget-object v2, p1, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2074
    iget v3, p1, Lcom/coloros/settings/feature/panel/a;->c:I

    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    const/16 v5, 0x400

    const-string v6, "no_adjust_volume"

    const/4 v7, 0x1

    if-eq p3, v1, :cond_5

    if-eq p3, v0, :cond_2

    goto :goto_3

    .line 2081
    :cond_2
    iget-object p3, p1, Lcom/coloros/settings/feature/panel/a;->a:Landroid/app/Activity;

    invoke-static {p3, v6}, Lcom/coloros/settings/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2085
    invoke-virtual {p1}, Lcom/coloros/settings/feature/panel/a;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2086
    iget-object p3, p1, Lcom/coloros/settings/feature/panel/a;->f:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p3, p2}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Z)V

    goto :goto_1

    .line 2088
    :cond_3
    iget-object p3, p1, Lcom/coloros/settings/feature/panel/a;->e:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p3, p2}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Z)V

    :goto_1
    if-gtz v2, :cond_4

    return v7

    .line 2093
    :cond_4
    iget-object p1, p1, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    sub-int/2addr v2, v7

    invoke-virtual {p1, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v7

    .line 2097
    :cond_5
    iget-object p2, p1, Lcom/coloros/settings/feature/panel/a;->a:Landroid/app/Activity;

    invoke-static {p2, v6}, Lcom/coloros/settings/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2101
    invoke-virtual {p1}, Lcom/coloros/settings/feature/panel/a;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2102
    iget-object p2, p1, Lcom/coloros/settings/feature/panel/a;->f:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p2, v7}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Z)V

    goto :goto_2

    .line 2104
    :cond_6
    iget-object p2, p1, Lcom/coloros/settings/feature/panel/a;->e:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p2, v7}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Z)V

    :goto_2
    if-lt v2, v3, :cond_7

    return v7

    .line 2109
    :cond_7
    iget-object p1, p1, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    add-int/2addr v2, v7

    invoke-virtual {p1, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v7

    :cond_8
    :goto_3
    return p2
.end method

.method public onPause()V
    .locals 2

    .line 238
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->i:Lcom/coloros/settings/feature/panel/a;

    const/4 v1, 0x0

    .line 3162
    iput-boolean v1, v0, Lcom/coloros/settings/feature/panel/a;->g:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 232
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/VolumePanelActivity;->i:Lcom/coloros/settings/feature/panel/a;

    const/4 v1, 0x1

    .line 2162
    iput-boolean v1, v0, Lcom/coloros/settings/feature/panel/a;->g:Z

    return-void
.end method
