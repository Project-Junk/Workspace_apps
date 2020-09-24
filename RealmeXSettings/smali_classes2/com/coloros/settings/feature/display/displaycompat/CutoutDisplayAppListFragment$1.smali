.class final Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$1;
.super Ljava/lang/Object;
.source "CutoutDisplayAppListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$1;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 557
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$1;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Z)Z

    goto :goto_0

    .line 559
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$1;->a:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Z)Z

    :goto_0
    return p2
.end method
