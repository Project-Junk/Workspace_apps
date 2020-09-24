.class Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$2;
.super Ljava/lang/Object;
.source "NotificationCenterHelper.java"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setFold(Landroid/service/notification/StatusBarNotification;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->access$100(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$2;->set(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
