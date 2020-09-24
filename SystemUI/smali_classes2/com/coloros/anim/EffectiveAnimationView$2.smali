.class Lcom/coloros/anim/EffectiveAnimationView$2;
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
        "Lcom/coloros/anim/EffectiveAnimationComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationView;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView$2;->this$0:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView$2;->this$0:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setComposition(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView$2;->onResult(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    return-void
.end method
