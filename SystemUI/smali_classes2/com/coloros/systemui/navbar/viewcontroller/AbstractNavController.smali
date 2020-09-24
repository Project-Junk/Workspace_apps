.class public abstract Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;
.super Ljava/lang/Object;
.source "AbstractNavController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/viewcontroller/IController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coloros/systemui/navbar/viewcontroller/IController;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected mScreenSize:Landroid/util/Size;

.field protected final mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->TAG:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mView:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->updateScreenSize()V

    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    .line 72
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 76
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 77
    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mScreenSize:Landroid/util/Size;

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mScreenSize:Landroid/util/Size;

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mScreenSize:Landroid/util/Size;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getView()Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setVisibility(I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->mView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
