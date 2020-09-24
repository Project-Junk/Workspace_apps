.class Lcom/android/internal/telephony/imsphone/ImsPhone$2;
.super Lcom/android/ims/c;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    .line 1621
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/ims/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onECBMEntered()V
    .locals 2

    .line 1624
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const-string v1, "onECBMEntered"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-void
.end method

.method public onECBMExited()V
    .locals 2

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const-string v1, "onECBMExited"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V

    return-void
.end method
