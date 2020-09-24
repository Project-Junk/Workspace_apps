.class public final Landroidx/core/view/ViewKt$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewKt;->doOnNextLayout(Landroid/view/View;La/d/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:La/d/a/b;


# direct methods
.method public constructor <init>(La/d/a/b;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroidx/core/view/ViewKt$doOnNextLayout$1;->$action:La/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 51
    iget-object p2, p0, Landroidx/core/view/ViewKt$doOnNextLayout$1;->$action:La/d/a/b;

    invoke-interface {p2, p1}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
