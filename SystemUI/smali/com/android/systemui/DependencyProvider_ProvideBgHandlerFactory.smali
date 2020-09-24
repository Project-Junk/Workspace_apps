.class public final Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideBgHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->bgLooperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideBgHandler(Lcom/android/systemui/DependencyProvider;Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyProvider;->provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->bgLooperProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/DependencyProvider;->provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
