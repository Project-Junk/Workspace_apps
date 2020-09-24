.class Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;
.super Ljava/lang/Object;
.source "NotificationCenterHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 366
    invoke-static {p2}, Lcom/coloros/notification/INotificationCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/notification/INotificationCenter;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->access$202(Lcom/coloros/notification/INotificationCenter;)Lcom/coloros/notification/INotificationCenter;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 371
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->access$202(Lcom/coloros/notification/INotificationCenter;)Lcom/coloros/notification/INotificationCenter;

    .line 372
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->access$300(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    return-void
.end method
