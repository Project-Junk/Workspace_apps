.class Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;
.super Ljava/lang/Object;
.source "KeyguardFakeAppLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Z)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;->val$show:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$700(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$000(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    :goto_0
    return-void
.end method
