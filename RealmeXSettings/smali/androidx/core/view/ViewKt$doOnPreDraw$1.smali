.class public final Landroidx/core/view/ViewKt$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewKt;->doOnPreDraw(Landroid/view/View;La/d/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:La/d/a/b;

.field final synthetic $vto:Landroid/view/ViewTreeObserver;

.field final synthetic receiver$0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;La/d/a/b;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 82
    iput-object p1, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->receiver$0:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$action:La/d/a/b;

    iput-object p3, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$action:La/d/a/b;

    iget-object v1, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->receiver$0:Landroid/view/View;

    invoke-interface {v0, v1}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$vto:Landroid/view/ViewTreeObserver;

    const-string/jumbo v1, "vto"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$vto:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->receiver$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
