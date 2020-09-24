.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$ei3oCYrpAoM97bTPUc5aH0P3Lo8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$ei3oCYrpAoM97bTPUc5aH0P3Lo8;->f$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    return-void
.end method


# virtual methods
.method public final get(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$ei3oCYrpAoM97bTPUc5aH0P3Lo8;->f$0:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->lambda$ei3oCYrpAoM97bTPUc5aH0P3Lo8(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
