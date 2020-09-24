.class public Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;
.super Landroid/widget/LinearLayout;
.source "SearchEmptyLayout.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1050
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d02bc

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a046a

    .line 1051
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->c:Landroid/widget/ImageView;

    const p2, 0x7f0a046b

    .line 1052
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->b:Landroid/widget/TextView;

    .line 1053
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->b:Landroid/widget/TextView;

    const p3, 0x7f121454

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 1054
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->b:Landroid/widget/TextView;

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0a03ae

    .line 1056
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->a:Landroid/widget/LinearLayout;

    .line 1057
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->a:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1058
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->a:Landroid/widget/LinearLayout;

    sget-object p2, Lcom/coloros/settings/feature/appmanager/search/-$$Lambda$SearchEmptyLayout$0GcGpNGIJ_XmpNlUcw-QpZ5Mjoc;->INSTANCE:Lcom/coloros/settings/feature/appmanager/search/-$$Lambda$SearchEmptyLayout$0GcGpNGIJ_XmpNlUcw-QpZ5Mjoc;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$0GcGpNGIJ_XmpNlUcw-QpZ5Mjoc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private setEmptyViewVisibility(I)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->b:Landroid/widget/TextView;

    if-nez v1, :cond_1

    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->c:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0808cd

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 89
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/search/SearchEmptyLayout;->setEmptyViewVisibility(I)V

    return-void
.end method
