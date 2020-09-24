.class public Lcom/coloros/systemui/notification/helper/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Notification--Helper"


# instance fields
.field mContext:Landroid/content/Context;

.field mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/Helper;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/Helper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    return-void
.end method


# virtual methods
.method public initHelper(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
