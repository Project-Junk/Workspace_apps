.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 72
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {v1, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02d3

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setContentView(I)V

    const p1, 0x7f0a05f2

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x300

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0a0305

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const p1, 0x7f0a05bb

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    .line 53
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object v0

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/android/settings/search/c;->a(Landroid/app/Activity;Landroid/widget/Toolbar;)V

    const p1, 0x7f0a0031

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 57
    new-instance v0, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 60
    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    const v0, 0x7f0a01a0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->a(Landroidx/fragment/app/Fragment;I)V

    .line 64
    :cond_0
    new-instance p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {p1}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    const v0, 0x7f0a03c7

    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->a(Landroidx/fragment/app/Fragment;I)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 66
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method
