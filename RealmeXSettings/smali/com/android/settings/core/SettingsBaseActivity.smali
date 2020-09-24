.class public Lcom/android/settings/core/SettingsBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/SettingsBaseActivity$c;,
        Lcom/android/settings/core/SettingsBaseActivity$a;,
        Lcom/android/settings/core/SettingsBaseActivity$b;
    }
.end annotation


# static fields
.field private static final DATA_SCHEME_PKG:Ljava/lang/String; = "package"

.field protected static final DEBUG_TIMING:Z = false

.field private static final STATE_CONTENT_PARENT_VIEW_FSW:Ljava/lang/String; = "state_content_parent_view_fsw"

.field private static final TAG:Ljava/lang/String; = "SettingsBaseActivity"

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/core/SettingsBaseActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$c;

.field private needChangeFitsSystemWindowsState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/core/SettingsBaseActivity$c;-><init>(Lcom/android/settings/core/SettingsBaseActivity;B)V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$c;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->needChangeFitsSystemWindowsState:Z

    return-void
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onCategoriesChanged()V

    return-void
.end method

.method private isLockTaskModePinned()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 229
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSettingsRunOnTop()Z
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private onCategoriesChanged()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/core/SettingsBaseActivity$b;

    invoke-interface {v2}, Lcom/android/settings/core/SettingsBaseActivity$b;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$b;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected enableChangeFitsSystemWindowsState(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->needChangeFitsSystemWindowsState:Z

    return-void
.end method

.method public isLaunchableInTaskModePinned()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 142
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    sget v1, Lcom/color/zoomwindow/ColorZoomWindowManager;->WINDOWING_MODE_ZOOM:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 90
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result v0

    const-string v1, "SettingsBaseActivity"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isSettingsRunOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLaunchableInTaskModePinned()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Devices lock task mode pinned."

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->finish()V

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Lcom/android/settings/core/HideNonSystemOverlayMixin;

    invoke-direct {v2, p0}, Lcom/android/settings/core/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x26

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 101
    invoke-virtual {p0, v4}, Lcom/android/settings/core/SettingsBaseActivity;->requestWindowFeature(I)Z

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p0, Lcom/android/settings/SubSettings;

    if-eqz v4, :cond_2

    const v4, 0x7f130194

    .line 105
    invoke-virtual {p0, v4}, Lcom/android/settings/core/SettingsBaseActivity;->setTheme(I)V

    :cond_2
    const v4, 0x7f0d02ce

    .line 107
    invoke-super {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v4, 0x7f0a019a

    .line 109
    invoke-virtual {p0, v4}, Lcom/android/settings/core/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v4, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 110
    iget-object v4, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v4, :cond_5

    if-eqz p1, :cond_3

    const-string v4, "state_content_parent_view_fsw"

    .line 111
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {}, Lcom/coloros/settings/utils/al;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->needChangeFitsSystemWindowsState:Z

    if-eqz p1, :cond_4

    const-string p1, "onCreate: getCurrentZoomWindowState is true"

    .line 114
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 117
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0804bb

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const p1, 0x7f0a003a

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    .line 125
    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void

    .line 128
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 160
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$c;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mPackageReceiver:Lcom/android/settings/core/SettingsBaseActivity$c;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/core/SettingsBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$a;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity$a;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SettingsBaseActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mContentParentView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v0

    const-string v1, "state_content_parent_view_fsw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public remCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$b;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    const v0, 0x7f0a0198

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 199
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0198

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const v0, 0x7f0a0198

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 5

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v4, p2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 252
    sget-object v1, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    :cond_3
    sget-object v1, Lcom/android/settings/core/SettingsBaseActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_3

    :cond_4
    const/4 p2, 0x2

    .line 256
    :goto_3
    invoke-virtual {v0, p1, p2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v3
.end method

.method public updateCategories()V
    .locals 2

    .line 269
    new-instance v0, Lcom/android/settings/core/SettingsBaseActivity$a;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity$a;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SettingsBaseActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
