.class public Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;
.super Lcom/oppo/camera/ui/menu/setting/h;
.source "CameraSettingActivity.java"


# instance fields
.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/h;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->j:Z

    .line 32
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->k:Z

    .line 33
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->l:Z

    .line 35
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->m:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->l:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->k:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "CameraSettingActivity"

    const-string v1, "onBackPressed"

    .line 76
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->l:Z

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a5

    .line 41
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->m()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "com.oppo.camera.ui.menu.setting.CameraSettingActivity"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/g;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/oppo/camera/ui/menu/setting/g;

    invoke-direct {v1}, Lcom/oppo/camera/ui/menu/setting/g;-><init>()V

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const v2, 0x7f0800f7

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/k;->b()I

    .line 51
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(), Action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraSettingActivity"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0f0145

    .line 54
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oppo/camera/o/a;->a(Landroidx/appcompat/app/c;Landroid/content/Intent;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oppo.camera.action.SETTING_MENU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "camera_intent_data"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/menu/setting/g;->g(Landroid/os/Bundle;)V

    .line 59
    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->j:Z

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->k:Z

    if-eqz p1, :cond_3

    const-string v1, "camera_enter_form_lock_screen"

    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->m:Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo.intent.action.APP_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->k:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onDestroy()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->k:Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onPause()V

    .line 102
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->l:Z

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/g;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.camera.action.SETTING_MENU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->setShowWhenLocked(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->setShowWhenLocked(Z)V

    .line 95
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->l:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/h;->onStop()V

    .line 111
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->setShowWhenLocked(Z)V

    :cond_0
    return-void
.end method