.class public Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RingtoneSettingsActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 31
    const-class v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d002f

    .line 37
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0a02c4

    .line 44
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0804bb

    .line 45
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-static {p0, v1, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    if-eqz p1, :cond_1

    const-string v1, "key_fragment_tag"

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->a:Ljava/lang/String;

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    if-nez p1, :cond_2

    .line 54
    new-instance p1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    .line 56
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->b:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 79
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingsActivity;->a:Ljava/lang/String;

    const-string v1, "key_fragment_tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
