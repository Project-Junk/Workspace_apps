.class public final Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;
.super Ljava/lang/Object;
.source "StatusBar_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/android/systemui/statusbar/phone/StatusBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInjectionInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
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
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->mInjectionInflaterProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->mPulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->mWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMInjectionInflater(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    return-void
.end method

.method public static injectMPulseExpansionHandler(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/PulseExpansionHandler;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-void
.end method

.method public static injectMWakeUpCoordinator(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->mInjectionInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/InjectionInflationController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMInjectionInflater(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/util/InjectionInflationController;)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->mPulseExpansionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMPulseExpansionHandler(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->mWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMWakeUpCoordinator(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMembers(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method
