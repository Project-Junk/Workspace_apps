.class public final synthetic Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

.field private final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    iput-object p2, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;->f$1:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    iget-object p0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;->f$1:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->lambda$toggleStowState$7$NotificationInfoBase(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
