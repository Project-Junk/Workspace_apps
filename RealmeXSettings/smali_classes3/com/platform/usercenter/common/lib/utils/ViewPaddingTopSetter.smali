.class public Lcom/platform/usercenter/common/lib/utils/ViewPaddingTopSetter;
.super Ljava/lang/Object;
.source "ViewPaddingTopSetter.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/ViewPaddingTopSetter;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getPaddingTop()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewPaddingTopSetter;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPaddingTop(I)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewPaddingTopSetter;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/platform/usercenter/common/lib/utils/ViewPaddingTopSetter;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/platform/usercenter/common/lib/utils/ViewPaddingTopSetter;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
