.class public final Landroidx/core/view/ViewKt$postOnAnimationDelayed$runnable$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewKt;->postOnAnimationDelayed(Landroid/view/View;JLa/d/a/a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:La/d/a/a;


# direct methods
.method public constructor <init>(La/d/a/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/ViewKt$postOnAnimationDelayed$runnable$1;->$action:La/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/core/view/ViewKt$postOnAnimationDelayed$runnable$1;->$action:La/d/a/a;

    invoke-interface {v0}, La/d/a/a;->invoke()Ljava/lang/Object;

    return-void
.end method
