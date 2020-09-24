.class public Lcom/coloros/systemui/blackscreen/controller/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Lcom/coloros/systemui/blackscreen/controller/INotification;
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# instance fields
.field private mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

.field private mContext:Landroid/content/Context;

.field private final mNotificationClickListener:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$NotificationController$GYOOQNyoHGdix_6tssJFgeFhAxc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$NotificationController$GYOOQNyoHGdix_6tssJFgeFhAxc;-><init>(Lcom/coloros/systemui/blackscreen/controller/NotificationController;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mNotificationClickListener:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/coloros/systemui/blackscreen/controller/IBrightness;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    .line 37
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 38
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 41
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->getInstance()Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mNotificationClickListener:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->addListener(Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationController(Z)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    if-eqz p0, :cond_0

    .line 57
    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onLightBriefly()V

    :cond_0
    return-void
.end method

.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onLightBriefly()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    .line 48
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 51
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->getInstance()Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;->mNotificationClickListener:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->removeListener(Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;)V

    return-void
.end method
