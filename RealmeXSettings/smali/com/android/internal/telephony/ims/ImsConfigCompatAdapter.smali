.class public Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigCompatAdapter.java"


# static fields
.field public static final FAILED:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsConfigCompatAdapter"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    return-void
.end method


# virtual methods
.method public getConfigInt(I)I
    .locals 4

    const/4 v0, -0x1

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, v0, :cond_0

    return p1

    :catch_0
    move-exception v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getConfigInt: item="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImsConfigCompatAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 3

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConfigInt: item="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigCompatAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public setConfig(II)I
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConfig: item="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsConfigCompatAdapter"

    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConfig: item="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsConfigCompatAdapter"

    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
