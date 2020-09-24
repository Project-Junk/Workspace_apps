.class public final Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->privacyControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;)",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;"
        }
    .end annotation

    .line 89
    new-instance v11, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 12

    .line 65
    new-instance v11, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 73
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/bubbles/BubbleData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->privacyControllerProvider:Ljavax/inject/Provider;

    .line 75
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V

    return-object v11
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->get()Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    return-object p0
.end method
