.class public Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VibrateSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 32
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0a02c4

    .line 39
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0804bb

    .line 40
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 43
    new-instance v0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;

    invoke-direct {v0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 61
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
