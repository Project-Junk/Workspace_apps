.class public Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsActivity;
.super Lcom/coloros/systemui/common/settings/BaseSettingsActivity;
.source "NavigationBarSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->newInstance()Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsActivity;->switchToFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
