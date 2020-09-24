.class public abstract Lcom/coloros/systemui/common/settings/BaseSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004e

    .line 35
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->init(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setStatusBarVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->finish()V

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected switchToFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a036c

    .line 54
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
