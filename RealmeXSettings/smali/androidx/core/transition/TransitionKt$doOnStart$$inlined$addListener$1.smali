.class public final Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnStart(Landroid/transition/Transition;La/d/a/b;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onStart:La/d/a/b;


# direct methods
.method public constructor <init>(La/d/a/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$1;->$onStart:La/d/a/b;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$1;->$onStart:La/d/a/b;

    invoke-interface {v0, p1}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
