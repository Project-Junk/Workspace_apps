.class Lcom/coloros/anim/EffectiveAnimationTask$1;
.super Landroid/os/Handler;
.source "EffectiveAnimationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationTask;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationTask;Landroid/os/Looper;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationTask$1;->this$0:Lcom/coloros/anim/EffectiveAnimationTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 48
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationTask$1;->this$0:Lcom/coloros/anim/EffectiveAnimationTask;

    invoke-static {p0}, Lcom/coloros/anim/EffectiveAnimationTask;->access$000(Lcom/coloros/anim/EffectiveAnimationTask;)V

    :goto_0
    return-void
.end method
