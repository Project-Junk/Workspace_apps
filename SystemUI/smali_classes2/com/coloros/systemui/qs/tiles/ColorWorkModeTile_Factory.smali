.class public final Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;
.super Ljava/lang/Object;
.source "ColorWorkModeTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field private final managedProfileControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;->managedProfileControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;)",
            "Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;
    .locals 2

    .line 23
    new-instance v0, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSHost;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;->managedProfileControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {v0, v1, p0}, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;->get()Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;

    move-result-object p0

    return-object p0
.end method