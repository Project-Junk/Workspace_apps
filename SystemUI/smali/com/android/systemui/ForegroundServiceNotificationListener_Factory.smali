.class public final Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;
.super Ljava/lang/Object;
.source "ForegroundServiceNotificationListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/ForegroundServiceNotificationListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)",
            "Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/ForegroundServiceNotificationListener;
    .locals 3

    .line 28
    new-instance v0, Lcom/android/systemui/ForegroundServiceNotificationListener;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceController;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/ForegroundServiceNotificationListener;-><init>(Landroid/content/Context;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->get()Lcom/android/systemui/ForegroundServiceNotificationListener;

    move-result-object p0

    return-object p0
.end method
