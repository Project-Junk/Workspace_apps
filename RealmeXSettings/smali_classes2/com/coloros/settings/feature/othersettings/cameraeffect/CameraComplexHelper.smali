.class Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;
.super Ljava/lang/Object;
.source "CameraComplexHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/othersettings/cameraeffect/c;


# instance fields
.field private a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

.field private b:Landroid/widget/Button;

.field private c:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->c:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    .line 38
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    return-object p0
.end method

.method private a(Z)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g()V

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const v1, 0x7f12047e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.UPDATE_RANDOM_COLOR_SWITCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "extra_status"

    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h()V

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const v1, 0x7f12047f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0500

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const v0, 0x7f12048f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 48
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h()V

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const v1, 0x7f12048f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method public final c()Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->c:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.CAMERA_MOTOR_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2083
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g()V

    .line 2084
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    const v2, 0x7f12048b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 2086
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2087
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2089
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2091
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action.UPDATE_RANDOM_COLOR_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_status"

    .line 2092
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2093
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    const/4 v0, 0x0

    const-string v1, "20012"

    const-string v2, "preview_camera_lifting_descending_effect"

    .line 74
    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 78
    :cond_2
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    .line 1241
    iget-boolean v0, v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
