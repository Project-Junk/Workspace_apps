.class public Lcom/android/internal/telephony/RadioConfigIndication;
.super Landroid/hardware/radio/a/c/a$a;
.source "RadioConfigIndication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioConfigIndication"


# instance fields
.field private final mRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/hardware/radio/a/c/a$a;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-void
.end method


# virtual methods
.method public simSlotsStatusChanged(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/a/d;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {p2}, Lcom/android/internal/telephony/RadioConfig;->convertHalSlotStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[UNSL]<  UNSOL_SIM_SLOT_STATUS_CHANGED "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RadioConfigIndication"

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p2, p2, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p2, p2, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public simSlotsStatusChanged_1_2(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/c/c;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-static {p2}, Lcom/android/internal/telephony/RadioConfig;->convertHalSlotStatus_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[UNSL]<  UNSOL_SIM_SLOT_STATUS_CHANGED "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RadioConfigIndication"

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p2, p2, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object p2, p2, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
