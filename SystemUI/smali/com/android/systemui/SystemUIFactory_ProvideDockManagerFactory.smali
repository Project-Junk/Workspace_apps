.class public final Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideDockManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dock/DockManager;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->module:Lcom/android/systemui/SystemUIFactory;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;-><init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/dock/DockManager;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->module:Lcom/android/systemui/SystemUIFactory;

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/SystemUIFactory;->provideDockManager(Landroid/content/Context;)Lcom/android/systemui/dock/DockManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->get()Lcom/android/systemui/dock/DockManager;

    move-result-object p0

    return-object p0
.end method
