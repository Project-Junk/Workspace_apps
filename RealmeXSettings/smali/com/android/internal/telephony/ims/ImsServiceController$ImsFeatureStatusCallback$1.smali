.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;
.super Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyImsFeatureStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyImsFeatureStatus: slot="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$900(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    .line 249
    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$1000(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceController"

    .line 248
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$900(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$1000(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$1100(Lcom/android/internal/telephony/ims/ImsServiceController;III)V

    return-void
.end method
