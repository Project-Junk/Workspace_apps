.class final Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;
.super Lcom/color/widget/ColorPagerAdapter;
.source "ColorModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/color/widget/ColorPagerAdapter;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;->a:Landroid/content/Context;

    .line 354
    iput-object p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;->b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 387
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 377
    invoke-static {}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 359
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01a3

    const/4 v2, 0x0

    .line 360
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0389

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 363
    invoke-static {}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;

    .line 1390
    iget v2, v2, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a$a;->a:I

    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 364
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;->b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    if-eqz p1, :cond_0

    .line 367
    invoke-static {p1, v1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;Landroid/view/View;)V

    if-nez p2, :cond_0

    .line 369
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$a;->b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->d(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Lcom/color/widget/ColorViewPager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
