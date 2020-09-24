.class public final Lcom/android/keyguard/clock/ClockManager_Factory;
.super Ljava/lang/Object;
.source "ClockManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/clock/ClockManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
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

.field private final dockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final injectionInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->injectionInflaterProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->colorExtractorProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;)",
            "Lcom/android/keyguard/clock/ClockManager_Factory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/android/keyguard/clock/ClockManager_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/clock/ClockManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/keyguard/clock/ClockManager;
    .locals 7

    .line 38
    new-instance v6, Lcom/android/keyguard/clock/ClockManager;

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->injectionInflaterProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->colorExtractorProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/dock/DockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/clock/ClockManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dock/DockManager;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager_Factory;->get()Lcom/android/keyguard/clock/ClockManager;

    move-result-object p0

    return-object p0
.end method
