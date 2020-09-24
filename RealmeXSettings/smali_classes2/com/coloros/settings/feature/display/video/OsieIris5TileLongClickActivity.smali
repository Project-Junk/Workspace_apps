.class public Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OsieIris5TileLongClickActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002e

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->setContentView(I)V

    const/4 p1, 0x1

    .line 38
    invoke-static {p1}, Lcom/coloros/partners/dolby/a/b;->a(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0a0162

    .line 43
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 44
    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v1, 0x7f0a049e

    .line 45
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 46
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 47
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 50
    new-instance p1, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-direct {p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;-><init>()V

    .line 51
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance p1, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;

    invoke-direct {p1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;-><init>()V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "osie"

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method
