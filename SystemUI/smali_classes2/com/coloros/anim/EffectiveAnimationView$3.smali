.class Lcom/coloros/anim/EffectiveAnimationView$3;
.super Lcom/coloros/anim/value/EffectiveValueCallback;
.source "EffectiveAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationView;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/SimpleValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/value/EffectiveValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationView;

.field final synthetic val$callback:Lcom/coloros/anim/value/SimpleValueCallback;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationView;Lcom/coloros/anim/value/SimpleValueCallback;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView$3;->this$0:Lcom/coloros/anim/EffectiveAnimationView;

    iput-object p2, p0, Lcom/coloros/anim/EffectiveAnimationView$3;->val$callback:Lcom/coloros/anim/value/SimpleValueCallback;

    invoke-direct {p0}, Lcom/coloros/anim/value/EffectiveValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/EffectiveFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 717
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView$3;->val$callback:Lcom/coloros/anim/value/SimpleValueCallback;

    invoke-interface {p0, p1}, Lcom/coloros/anim/value/SimpleValueCallback;->getValue(Lcom/coloros/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
