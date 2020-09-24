.class public final Lcom/coloros/settings/utils/t;
.super Ljava/lang/Object;
.source "HeightView.java"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/coloros/settings/utils/t;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/utils/t;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setHeight(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/coloros/settings/utils/t;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 30
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    iget-object p1, p0, Lcom/coloros/settings/utils/t;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
