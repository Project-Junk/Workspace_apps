.class public final Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;
.super Ljava/lang/Object;
.source "ColorHotspotTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field private final hotspotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
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
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->hotspotControllerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->dataSaverControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;)",
            "Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;
    .locals 3

    .line 28
    new-instance v0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSHost;

    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->hotspotControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->dataSaverControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-direct {v0, v1, v2, p0}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->get()Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    move-result-object p0

    return-object p0
.end method
