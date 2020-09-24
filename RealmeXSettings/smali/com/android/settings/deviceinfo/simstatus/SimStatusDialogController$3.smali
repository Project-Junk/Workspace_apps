.class final Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataConnectionStateChanged(I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V

    .line 465
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->e(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->a:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V

    return-void
.end method
