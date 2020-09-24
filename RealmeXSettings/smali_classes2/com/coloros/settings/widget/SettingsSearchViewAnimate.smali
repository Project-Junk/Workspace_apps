.class public Lcom/coloros/settings/widget/SettingsSearchViewAnimate;
.super Landroid/widget/RelativeLayout;
.source "SettingsSearchViewAnimate.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 30
    iput p1, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x10

    .line 30
    iput p1, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x10

    .line 30
    iput p1, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->b:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 45
    iget-object p1, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->a:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    const p1, 0x7f0a008a

    .line 46
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->a:Landroid/widget/LinearLayout;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 49
    iget p2, p0, Lcom/coloros/settings/widget/SettingsSearchViewAnimate;->b:I

    if-eqz p1, :cond_4

    .line 1055
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1056
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 1057
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1058
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x1

    .line 1059
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    and-int/lit8 p2, p2, 0x70

    const/16 v1, 0x10

    const/16 v2, 0xf

    if-eq p2, v1, :cond_3

    const/16 v1, 0x30

    if-eq p2, v1, :cond_2

    const/16 v1, 0x50

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    .line 1072
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1073
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method
