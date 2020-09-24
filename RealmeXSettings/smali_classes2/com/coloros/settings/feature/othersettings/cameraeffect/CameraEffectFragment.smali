.class public Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CameraEffectFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field a:Z

.field private b:Landroid/app/Activity;

.field private c:Landroid/os/MotorManager;

.field private d:Landroid/media/AudioManager;

.field private e:Z

.field private f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;

.field private g:I

.field private h:Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

.field private i:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->e:Z

    .line 77
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    .line 80
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a:Z

    .line 259
    sget-object v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraEffectFragment$1wsL0yH5IEk09WrRBXdZ8dT2Afg;->INSTANCE:Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraEffectFragment$1wsL0yH5IEk09WrRBXdZ8dT2Afg;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->i:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;)Lcom/coloros/settings/feature/othersettings/cameraeffect/c;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h:Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

    return-object p0
.end method

.method private static synthetic a(I)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$1wsL0yH5IEk09WrRBXdZ8dT2Afg(I)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera3DEffectFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    new-instance v2, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h:Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

    invoke-interface {v3}, Lcom/coloros/settings/feature/othersettings/cameraeffect/c;->c()Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v2, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-direct {v2, p1, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method final c()Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c:Landroid/os/MotorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/MotorManager;->getMotorStateBySystemApp()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "oppo.camera.packname"

    .line 207
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isCameraUsingByOtherPackage: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera3DEffectFragment"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method final d()Z
    .locals 1

    .line 213
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final e()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c:Landroid/os/MotorManager;

    if-eqz v0, :cond_0

    const-string v1, "settings_preview_camera"

    .line 218
    invoke-virtual {v0, v1}, Landroid/os/MotorManager;->upMotorBySystemApp(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 219
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    .line 221
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()Z
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c:Landroid/os/MotorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "settings_preview_camera"

    .line 230
    invoke-virtual {v0, v2}, Landroid/os/MotorManager;->downMotorBySystemApp(Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 231
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    .line 233
    iput-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->a:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method final g()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->i:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->e:Z

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15002e

    return v0
.end method

.method final h()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->i:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->e:Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundEffectHelper;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :goto_0
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h:Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const v0, 0x7f13040a

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d:Landroid/media/AudioManager;

    .line 97
    new-instance p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    const-string v0, "motor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/MotorManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c:Landroid/os/MotorManager;

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    const v1, 0x7f13040a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 108
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    invoke-static {p2, p1, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 109
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p2, p3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    invoke-virtual {p2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 117
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->h:Lcom/coloros/settings/feature/othersettings/cameraeffect/c;

    invoke-interface {p2, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/c;->a(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 195
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->i:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x4

    .line 189
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    return-void
.end method

.method public onResume()V
    .locals 10

    .line 124
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    const-string v1, "20012"

    const-string v2, "camera_lifting_descending_effect"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oppo.intent.action.MOTOR_UPED"

    .line 130
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "oppo.intent.action.MOTOR_DOWNED"

    .line 131
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->b:Landroid/app/Activity;

    iget-object v5, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment$a;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1139
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->c:Landroid/os/MotorManager;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1140
    invoke-virtual {v0}, Landroid/os/MotorManager;->getMotorStateBySystemApp()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1145
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    return-void

    .line 1142
    :cond_1
    iput v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1151
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 1148
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->g:I

    :cond_4
    :goto_0
    return-void
.end method
