.class public Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;
.super Lcom/android/settings/core/a;
.source "CameraColorPrefCategoryController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;


# static fields
.field private static final PREF_KEY_COLOR_PREFERENCE:Ljava/lang/String; = "camera_lifting_descending_color_layout"

.field private static final PREF_KEY_LIGHT_CATEGORY:Ljava/lang/String; = "camera_lifting_descending_light_category"

.field private static final PREF_KEY_LIGHT_SWITCH:Ljava/lang/String; = "camera_lifting_descending_effect_light"

.field private static final PREF_KEY_RANDOM_COLOR_SWITCH:Ljava/lang/String; = "camera_lifting_descending_random_color"

.field private static final TAG:Ljava/lang/String; = "CameraColorPrefCategoryController"


# instance fields
.field private mColorPrefCallback:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

.field private mColorPrefCategory:Landroidx/preference/PreferenceCategory;

.field private mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

.field private final mIsSupportCameraColor:Z

.field private mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mRandomColorSwitchPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "camera_lifting_descending_light_category"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    new-instance p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPrefCallback:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    .line 58
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mIsSupportCameraColor:Z

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mRandomColorSwitchPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private updateColorPrefCategory(Z)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPrefCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mRandomColorSwitchPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 123
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "camera_lifting_descending_light_category"

    .line 78
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPrefCategory:Landroidx/preference/PreferenceCategory;

    const-string v2, "camera_lifting_descending_effect_light"

    .line 79
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 82
    invoke-virtual {v2, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string v2, "camera_lifting_descending_random_color"

    .line 84
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mRandomColorSwitchPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 85
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mRandomColorSwitchPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 87
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mRandomColorSwitchPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v2, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v2, "camera_lifting_descending_color_layout"

    .line 89
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    if-eqz p1, :cond_3

    xor-int/lit8 v1, v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->setEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPrefCallback:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    .line 1142
    iput-object v1, p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    .line 94
    :cond_3
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->updateColorPrefCategory(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mIsSupportCameraColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CameraColorPrefCategoryController"

    const-string v0, "onCreate"

    .line 131
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action.UPDATE_RANDOM_COLOR_SWITCH"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraColorPrefCategoryController"

    const-string v1, "onDestroy"

    .line 148
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    .line 1146
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, -0x1

    .line 1147
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 99
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "camera_lifting_descending_effect_light"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;Z)V

    .line 103
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->updateColorPrefCategory(Z)V

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    const-string v0, "camera_lifting_descending_color_switch"

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;ZLjava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "camera_lifting_descending_random_color"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Z)V

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mColorPreference:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->setEnabled(Z)V

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->mContext:Landroid/content/Context;

    const-string v0, "camera_lifting_descending_random_color_switch"

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;ZLjava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
