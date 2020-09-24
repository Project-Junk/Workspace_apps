.class public final Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideLocalBluetoothControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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

.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/DependencyProvider;->provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->get()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
