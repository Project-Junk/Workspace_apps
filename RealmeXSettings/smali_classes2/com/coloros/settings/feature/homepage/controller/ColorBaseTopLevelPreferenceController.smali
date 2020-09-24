.class public Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.super Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;
.source "ColorBaseTopLevelPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field protected static final KEY_BLUETOOTH_SETTINGS:Ljava/lang/String; = "bluetooth_settings"

.field protected static final KEY_DISPLAY_AND_BRIGHTNESS:Ljava/lang/String; = "display_and_brightness"

.field protected static final KEY_MORE_ABOUT_NETWORK:Ljava/lang/String; = "more_about_network"

.field protected static final KEY_NETWORK:Ljava/lang/String; = "network_settings"

.field protected static final KEY_NOTIFICATION_AND_STATUSBAR:Ljava/lang/String; = "notification_and_statusbar"

.field protected static final KEY_OPPO_HOLIDAY_MODE:Ljava/lang/String; = "oppo_holiday_mode"

.field public static final KEY_SCREEN_LOCK:Ljava/lang/String; = "screen_lock"

.field protected static final KEY_SOUND_AND_VIBEATOR:Ljava/lang/String; = "sound_and_vibrator"

.field protected static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field protected static final KEY_WIFI_SETTINGS:Ljava/lang/String; = "wifi_settings"

.field private static final TAG:Ljava/lang/String; = "ColorBasePreferenceTopLevelController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dcsState()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "oppo_holiday_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v1, "notification_and_statusbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "sound_and_vibrator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "more_about_network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "bluetooth_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "wifi_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_8
    const-string v1, "network_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "display_and_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x52463b2a -> :sswitch_9
        -0x4ee1d8ec -> :sswitch_8
        -0x191499f3 -> :sswitch_7
        -0x38db16c -> :sswitch_6
        -0x294dee2 -> :sswitch_5
        0x136c5c12 -> :sswitch_4
        0x50f624b1 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
        0x67518625 -> :sswitch_1
        0x6cbce769 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTargetIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->dcsState()V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getTargetIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorBasePreferenceTopLevelController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handleClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected refreshTitle(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected startActivitySafely(Landroid/content/Intent;)V
    .locals 1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "ColorBasePreferenceTopLevelController"

    const-string v0, "Activity not found."

    .line 127
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->updateState(Landroidx/preference/Preference;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->refreshTitle(Landroidx/preference/Preference;)V

    return-void
.end method
