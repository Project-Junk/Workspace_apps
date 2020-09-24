.class public final synthetic Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;->f$1:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->lambda$addTileList$2$ColorTileQueryHelper(Ljava/util/ArrayList;Z)V

    return-void
.end method
