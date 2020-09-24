.class public final Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideNightDisplayListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/hardware/display/NightDisplayListener;",
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
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;
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
            "Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideNightDisplayListener(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;)Landroid/hardware/display/NightDisplayListener;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/DependencyProvider;->provideNightDisplayListener(Landroid/content/Context;Landroid/os/Handler;)Landroid/hardware/display/NightDisplayListener;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/NightDisplayListener;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/hardware/display/NightDisplayListener;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/DependencyProvider;->provideNightDisplayListener(Landroid/content/Context;Landroid/os/Handler;)Landroid/hardware/display/NightDisplayListener;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/NightDisplayListener;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->get()Landroid/hardware/display/NightDisplayListener;

    move-result-object p0

    return-object p0
.end method
