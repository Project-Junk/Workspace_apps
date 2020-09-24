.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigListener"
.end annotation


# instance fields
.field private final mCapability:I

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mTech:I


# direct methods
.method public constructor <init>(IILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mCapability:I

    .line 91
    iput p2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mTech:I

    .line 92
    iput-object p3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public getFeatureValueReceived(I)V
    .locals 0

    return-void
.end method

.method public onGetFeatureResponse(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mCapability:I

    if-ne p1, p4, :cond_0

    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mTech:I

    if-ne p2, p4, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->getFeatureValueReceived(I)V

    return-void

    .line 102
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onGetFeatureResponse: response different than requested: feature="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and network="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MmTelFeatureCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetVideoQuality(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mCapability:I

    if-ne p1, p4, :cond_0

    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mTech:I

    if-ne p2, p4, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 112
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->setFeatureValueReceived(I)V

    return-void

    .line 114
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onSetFeatureResponse: response different than requested: feature="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and network="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MmTelFeatureCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetVideoQuality(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setFeatureValueReceived(I)V
    .locals 0

    return-void
.end method
