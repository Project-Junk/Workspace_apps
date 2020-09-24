.class final Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;
.super Ljava/lang/Object;
.source "VideoBeautySettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;J)J

    .line 99
    instance-of v0, p1, Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v0

    .line 102
    check-cast p1, Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 103
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setIsOpen(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 105
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setIsOpen(Ljava/lang/String;)V

    .line 108
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getIsOpen()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v2, v1, v3, v0}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->b(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->b(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    move-result-object v0

    invoke-static {}, Lcom/coloros/settings/romupdate/e;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->setEnabled(Z)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->b:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/color/support/preference/ColorSwitchPreference;->isChecked()Z

    move-result p1

    .line 117
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;Ljava/lang/String;Z)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
