.class public Lcom/oppo/camera/ui/menu/setting/f;
.super Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;
.source "CameraMenuOptionSecondLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private k:Lcom/oppo/camera/ui/menu/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/menu/a;Lcom/oppo/camera/ui/menu/setting/e;Lcom/oppo/camera/ui/d;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    return-void
.end method


# virtual methods
.method public A()Landroid/view/View;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/i;->a(IZ)V

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/i;->a(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/oppo/camera/ui/menu/i;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    return-void
.end method

.method public b()V
    .locals 3

    .line 32
    new-instance v0, Lcom/oppo/camera/ui/menu/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/f;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/f;->i:Lcom/oppo/camera/ui/d;

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/menu/i;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    .line 33
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/menu/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/i;->setSelectState(Z)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/i;->setItemText(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/i;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/f;->h:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/f;->h:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    invoke-interface {p1, p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;->a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;)V

    :cond_0
    return-void
.end method

.method protected p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected r()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/i;->a()V

    .line 109
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->r()V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/f;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/i;->getViewWidth()I

    move-result v0

    return v0

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/f;->k:Lcom/oppo/camera/ui/menu/i;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/i;->getViewHeight()I

    move-result v0

    return v0

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t()I

    move-result v0

    return v0
.end method
