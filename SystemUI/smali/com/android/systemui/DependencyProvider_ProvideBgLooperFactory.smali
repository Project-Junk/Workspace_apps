.class public final Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideBgLooperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Looper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;
    .locals 1

    .line 22
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static proxyProvideBgLooper(Lcom/android/systemui/DependencyProvider;)Landroid/os/Looper;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideBgLooper()Landroid/os/Looper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideBgLooper()Landroid/os/Looper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->get()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
