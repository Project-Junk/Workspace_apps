.class public Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;
.super Ljava/lang/Object;
.source "ColorBaseNotificationEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorBaseNotificationEntry"


# instance fields
.field private mClose:Z

.field public postTime:J


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;->mClose:Z

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;->postTime:J

    return-void
.end method

.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 0
    .param p2    # Landroid/service/notification/NotificationListenerService$Ranking;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;->mClose:Z

    const-wide/16 p1, -0x1

    .line 27
    iput-wide p1, p0, Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;->postTime:J

    return-void
.end method


# virtual methods
.method public isClose()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;->mClose:Z

    return p0
.end method

.method public setClose(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/ColorBaseNotificationEntry;->mClose:Z

    return-void
.end method
