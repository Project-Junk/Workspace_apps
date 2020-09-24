.class Lcom/android/internal/telephony/NewTimeServiceHelper$1;
.super Landroid/database/ContentObserver;
.source "NewTimeServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/NewTimeServiceHelper;->setListener(Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NewTimeServiceHelper;

.field final synthetic val$listener:Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NewTimeServiceHelper;Landroid/os/Handler;Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/NewTimeServiceHelper$1;->this$0:Lcom/android/internal/telephony/NewTimeServiceHelper;

    iput-object p3, p0, Lcom/android/internal/telephony/NewTimeServiceHelper$1;->val$listener:Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/NewTimeServiceHelper$1;->val$listener:Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;

    iget-object v0, p0, Lcom/android/internal/telephony/NewTimeServiceHelper$1;->this$0:Lcom/android/internal/telephony/NewTimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NewTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;->onTimeZoneDetectionChange(Z)V

    return-void
.end method
