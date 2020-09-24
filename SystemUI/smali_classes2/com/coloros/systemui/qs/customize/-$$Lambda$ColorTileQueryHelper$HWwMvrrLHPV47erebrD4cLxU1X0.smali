.class public final synthetic Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->lambda$addStockAndPackageTiles$1$ColorTileQueryHelper(Ljava/lang/String;)V

    return-void
.end method
