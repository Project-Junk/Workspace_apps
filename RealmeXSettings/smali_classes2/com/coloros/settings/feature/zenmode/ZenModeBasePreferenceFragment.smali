.class public Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;
.super Lcom/color/support/preference/ColorPreferenceFragment;
.source "ZenModeBasePreferenceFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcolor/support/design/widget/ColorAppBarLayout;

.field i:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/color/support/preference/ColorPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a070a

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    .line 40
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p2, 0x7f0a020e

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->a:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050063

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 45
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->a:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    const p3, 0x7f0803f7

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 48
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    new-instance p3, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment$1;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;)V

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f080458

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->i:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->a()I

    move-result p3

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->inflateMenu(I)V

    const p2, 0x7f0a0096

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->b:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeBasePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060103

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-object p1
.end method
