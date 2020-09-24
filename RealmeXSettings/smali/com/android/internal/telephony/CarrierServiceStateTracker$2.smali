.class Lcom/android/internal/telephony/CarrierServiceStateTracker$2;
.super Landroid/database/ContentObserver;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Handler;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$300(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    return-void
.end method
