.class Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$1;
.super Ljava/lang/Object;
.source "NotificationCenterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->access$000(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    return-void
.end method
