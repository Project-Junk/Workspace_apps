.class Lcom/android/internal/telephony/dataconnection/DcController$1;
.super Landroid/telephony/PhoneStateListener;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Looper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCarrierNetworkChange(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->access$102(Lcom/android/internal/telephony/dataconnection/DcController;Z)Z

    return-void
.end method
