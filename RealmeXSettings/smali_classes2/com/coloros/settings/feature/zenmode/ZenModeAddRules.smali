.class public Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ZenModeAddRules.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d03b5

    .line 30
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;->setContentView(I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 31
    invoke-static {p0, p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const p1, 0x7f0a03c7

    .line 33
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 34
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/view/View;I)V

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ZEN_MODE_ADD_RULES_FRAGMENT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;-><init>()V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
