.class public final Lcom/android/ims/b;
.super Ljava/lang/Object;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/ims/internal/IImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsEcbm;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImsEcbm"

    const-string v1, "ImsEcbm created"

    .line 53
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/ims/b;->a:Lcom/android/ims/internal/IImsEcbm;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/b;->a:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "exitEmergencyCallbackMode()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
