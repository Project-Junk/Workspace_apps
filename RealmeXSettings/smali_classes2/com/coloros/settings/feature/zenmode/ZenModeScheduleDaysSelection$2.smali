.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/design/widget/ColorAppBarLayout;

.field final synthetic b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Lcolor/support/design/widget/ColorAppBarLayout;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    new-instance v2, Landroid/view/View;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Landroid/view/View;)Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setPadding(IIII)V

    .line 199
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setClipToPadding(Z)V

    .line 200
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$2;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object v1

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->smoothScrollByOffset(I)V

    return-void
.end method
