.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;
.super Ljava/lang/Object;
.source "NotificationWakeUpCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final arg0Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final arg1Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            ">;"
        }
    .end annotation
.end field

.field private final arg2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
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
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->arg0Provider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->arg1Provider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->arg2Provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .locals 3

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->arg0Provider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->arg1Provider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->arg2Provider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object p0

    return-object p0
.end method
