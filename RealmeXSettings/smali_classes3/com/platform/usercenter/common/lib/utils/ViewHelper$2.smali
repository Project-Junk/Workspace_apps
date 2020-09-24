.class final Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;
.super Ljava/lang/Object;
.source "ViewHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/common/lib/utils/ViewHelper;->setViewMarginTopBelowAnchor(Landroid/view/View;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;->val$anchor:Landroid/view/View;

    iput-object p2, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;->val$views:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 50
    aget-object v3, v3, v2

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 52
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    .line 53
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
