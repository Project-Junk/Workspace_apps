.class Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$4;
.super Ljava/lang/Object;
.source "KeyguardEngineContainer.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$4;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$4;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$702(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;I)I

    .line 345
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$4;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$200(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    return-void
.end method
