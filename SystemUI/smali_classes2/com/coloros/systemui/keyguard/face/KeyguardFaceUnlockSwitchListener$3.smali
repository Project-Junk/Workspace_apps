.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$3;
.super Landroid/database/ContentObserver;
.source "KeyguardFaceUnlockSwitchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;Landroid/os/Handler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$3;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$3;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockFillLightSwitchChange()V

    return-void
.end method
