.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;
.super Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

.field final synthetic val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field final synthetic val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    iput-object p5, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    iput-object p6, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public setFeatureValueReceived(I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 343
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    const/4 v3, -0x1

    .line 342
    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 345
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "changeEnabledCapabilities - setFeatureValueReceived with value "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MmTelFeatureCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
