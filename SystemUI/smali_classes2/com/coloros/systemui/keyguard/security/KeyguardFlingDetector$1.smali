.class Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyguardFlingDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->access$000(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;)Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    invoke-static {v0, p1, p2}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->access$100(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->access$000(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;)Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;->onKeyguardFling(FF)V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method
