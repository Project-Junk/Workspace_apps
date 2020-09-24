.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 3208
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFeatureResponse(IIII)V
    .locals 0

    return-void
.end method

.method public onGetVideoQuality(II)V
    .locals 0

    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 1

    .line 3214
    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p4

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsSetFeatureValue(IIII)V

    return-void
.end method

.method public onSetVideoQuality(I)V
    .locals 0

    return-void
.end method
