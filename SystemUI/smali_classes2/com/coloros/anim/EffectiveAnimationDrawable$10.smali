.class Lcom/coloros/anim/EffectiveAnimationDrawable$10;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final synthetic val$markerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$10;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$10;->val$markerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 524
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$10;->this$0:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable$10;->val$markerName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method
