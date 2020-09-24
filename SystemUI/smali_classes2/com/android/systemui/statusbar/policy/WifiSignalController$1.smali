.class Lcom/android/systemui/statusbar/policy/WifiSignalController$1;
.super Landroid/database/ContentObserver;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rssi_level"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRssiChangeObserver onChange: rssi_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    if-eq p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    :cond_0
    return-void
.end method
