.class Lcom/coloros/anim/EffectiveAnimationView$1;
.super Ljava/lang/Object;
.source "EffectiveAnimationView.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/EffectiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/EffectiveAnimationListener<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationView;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView$1;->this$0:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView$1;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
