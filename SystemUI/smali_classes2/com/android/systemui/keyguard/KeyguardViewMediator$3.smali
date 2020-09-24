.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$screenshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1493
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setScreenshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
