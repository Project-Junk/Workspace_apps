.class public final synthetic Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

.field private final synthetic f$1:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;->f$1:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;->f$1:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->lambda$addCurrentTiles$0$ColorTileQueryHelper(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method
