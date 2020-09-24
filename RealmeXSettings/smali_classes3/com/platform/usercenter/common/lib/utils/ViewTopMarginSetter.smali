.class public Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;
.super Ljava/lang/Object;
.source "ViewTopMarginSetter.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# instance fields
.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureList()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getPropertyName()Ljava/lang/String;
    .locals 1

    const-string v0, "topMargin"

    return-object v0
.end method

.method public static getViewTopMargin(Landroid/view/View;)I
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setViewTopMargin(Landroid/view/View;I)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->ensureList()V

    .line 22
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTopMargin()I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 69
    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->getViewTopMargin(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setTopMargin(I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 57
    invoke-static {v1, p1}, Lcom/platform/usercenter/common/lib/utils/ViewTopMarginSetter;->setViewTopMargin(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
