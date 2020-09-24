.class public Lcom/platform/usercenter/common/lib/utils/ViewHeightSetter;
.super Ljava/lang/Object;
.source "ViewHeightSetter.java"


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/ViewHeightSetter;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewHeightSetter;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHeight(I)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/ViewHeightSetter;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 16
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    iget-object p1, p0, Lcom/platform/usercenter/common/lib/utils/ViewHeightSetter;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
