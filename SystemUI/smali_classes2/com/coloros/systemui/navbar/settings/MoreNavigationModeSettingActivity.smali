.class public Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingActivity;
.super Lcom/coloros/systemui/common/settings/BaseSettingsActivity;
.source "MoreNavigationModeSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->newInstance()Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingActivity;->switchToFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
