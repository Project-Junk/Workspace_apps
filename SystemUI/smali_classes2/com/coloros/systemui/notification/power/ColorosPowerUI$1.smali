.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;
.super Ljava/lang/Object;
.source "ColorosPowerUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerSaveChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object p1, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x0

    const/16 v0, 0x2717

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
