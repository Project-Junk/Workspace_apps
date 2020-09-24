.class public Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;
.super Ljava/lang/Object;
.source "DividerMenuWindowManager.java"


# static fields
.field private static final WINDOW_TITLE:Ljava/lang/String; = "DockedStackDividerMenu"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;IIIII)V
    .locals 6

    .line 58
    new-instance p6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const v4, 0x20840020

    const/4 v5, -0x3

    move-object v0, p6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p6, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 64
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 65
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string p3, "DockedStackDividerMenu"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x33

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 68
    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 69
    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p3, p3, 0x50

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 70
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 p3, 0x1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 p2, 0x700

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 74
    iget-object p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public removeView()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public updatePosition(II[I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 87
    aget v2, p3, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x1

    .line 88
    aget p3, p3, v2

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
