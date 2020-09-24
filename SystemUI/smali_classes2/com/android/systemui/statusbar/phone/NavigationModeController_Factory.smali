.class public final Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;
.super Ljava/lang/Object;
.source "NavigationModeController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
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

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
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
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/NavigationModeController;
    .locals 3

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/UiOffloadThread;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/UiOffloadThread;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->get()Lcom/android/systemui/statusbar/phone/NavigationModeController;

    move-result-object p0

    return-object p0
.end method
