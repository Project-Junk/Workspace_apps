.class public final Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;
.super Ljava/lang/Object;
.source "FalsingManagerProxy_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/classifier/FalsingManagerProxy;",
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

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newFalsingManagerProxy(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)Lcom/android/systemui/classifier/FalsingManagerProxy;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/classifier/FalsingManagerProxy;
    .locals 3

    .line 28
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/classifier/FalsingManagerProxy;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->get()Lcom/android/systemui/classifier/FalsingManagerProxy;

    move-result-object p0

    return-object p0
.end method
