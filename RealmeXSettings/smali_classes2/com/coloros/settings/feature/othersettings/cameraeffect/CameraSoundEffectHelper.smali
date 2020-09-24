.class Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;
.super Ljava/lang/Object;
.source "CameraSoundEffectHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/othersettings/cameraeffect/c;


# instance fields
.field private a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

.field private b:Landroid/widget/Button;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->c:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->d:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0500

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const v0, 0x7f120477

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const v1, 0x7f120477

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1192
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 80
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "20012"

    const-string v2, "preview_3d_camera_sound"

    .line 81
    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g()V

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const v0, 0x7f120479

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 87
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const v1, 0x7f120477

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
