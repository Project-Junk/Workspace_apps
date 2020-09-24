.class public final Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideShadeControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/ShadeController;",
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

.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->module:Lcom/android/systemui/SystemUIFactory;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;-><init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideShadeController(Lcom/android/systemui/SystemUIFactory;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIFactory;->provideShadeController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->module:Lcom/android/systemui/SystemUIFactory;

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/SystemUIFactory;->provideShadeController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->get()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    return-object p0
.end method
