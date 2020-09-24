.class public final Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideDataSaverControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/DataSaverController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;

.field private final networkControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->networkControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideDataSaverController(Lcom/android/systemui/DependencyProvider;Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyProvider;->provideDataSaverController(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->networkControllerProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/DependencyProvider;->provideDataSaverController(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->get()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    return-object p0
.end method
