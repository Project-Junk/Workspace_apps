.class Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$3;
.super Ljava/lang/Object;
.source "NotificationCenterHelper.java"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter;


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
        "Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/coloros/systemui/notification/smallApp/SmallApp;Ljava/lang/Boolean;)V
    .locals 0

    .line 101
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setFold(Z)V

    return-void
.end method

.method public bridge synthetic set(Lcom/coloros/systemui/notification/smallApp/SmallApp;Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$3;->set(Lcom/coloros/systemui/notification/smallApp/SmallApp;Ljava/lang/Boolean;)V

    return-void
.end method
