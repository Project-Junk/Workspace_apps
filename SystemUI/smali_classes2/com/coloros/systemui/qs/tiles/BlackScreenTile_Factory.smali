.class public final Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;
.super Ljava/lang/Object;
.source "BlackScreenTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/coloros/systemui/qs/tiles/BlackScreenTile;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;->hostProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;)",
            "Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/coloros/systemui/qs/tiles/BlackScreenTile;
    .locals 1

    .line 17
    new-instance v0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile_Factory;->get()Lcom/coloros/systemui/qs/tiles/BlackScreenTile;

    move-result-object p0

    return-object p0
.end method
