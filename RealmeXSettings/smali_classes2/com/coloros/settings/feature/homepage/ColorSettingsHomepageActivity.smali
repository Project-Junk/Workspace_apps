.class public Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;
.super Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;
.source "ColorSettingsHomepageActivity.java"


# instance fields
.field private a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private b:Lcom/coloros/settings/feature/homepage/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/coloros/settings/feature/homepage/a;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->b:Lcom/coloros/settings/feature/homepage/a;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/coloros/settings/feature/homepage/a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->b:Lcom/coloros/settings/feature/homepage/a;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->b:Lcom/coloros/settings/feature/homepage/a;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 55
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->setContentView(I)V

    const v0, 0x7f0a05f2

    .line 59
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 60
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0804bb

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    .line 1435
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1436
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v1

    .line 1437
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 1438
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    .line 1439
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    .line 1438
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setPadding(IIII)V

    .line 1440
    instance-of v1, v0, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;

    if-eqz v1, :cond_0

    .line 1441
    check-cast v0, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->setCustomStatusBarBackgroundHeight(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)Z

    const v0, 0x7f0a0031

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 82
    new-instance v1, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 86
    :cond_1
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    .line 3116
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;-><init>()V

    .line 4098
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 4099
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a03c7

    .line 4100
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4103
    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 4105
    :cond_3
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 4107
    :goto_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 91
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 92
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    .line 4383
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    .line 4384
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->b:Lcom/coloros/settings/feature/homepage/a;

    .line 163
    invoke-static {}, Lcom/color/injector/adaptor/b;->a()V

    .line 164
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->a()V

    .line 165
    invoke-super {p0}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    invoke-static {p0, p2}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    .line 4219
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/content/Intent;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    move-result-object v0

    .line 4365
    iget-object v1, v0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0a070c

    .line 4366
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    .line 4368
    :cond_0
    iget-object v0, v0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v0, "search_bar_state"

    .line 4374
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
