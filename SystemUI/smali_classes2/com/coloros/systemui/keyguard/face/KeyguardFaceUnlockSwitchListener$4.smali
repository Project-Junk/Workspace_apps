.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$4;
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

    .line 67
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockCustomizeDisableSwitchChange(Z)V

    return-void
.end method
