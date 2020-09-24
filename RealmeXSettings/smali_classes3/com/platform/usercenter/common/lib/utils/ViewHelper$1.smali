.class final Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;
.super Ljava/lang/Object;
.source "ViewHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/common/lib/utils/ViewHelper;->setViewPaddingTopBelowAnchor(Landroid/view/View;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$setList:[Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[Landroid/view/View;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;->val$anchor:Landroid/view/View;

    iput-object p2, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;->val$setList:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 8

    .line 18
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 19
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 21
    :goto_0
    iget-object v3, p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;->val$setList:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 22
    aget-object v3, v3, v2

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 23
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
