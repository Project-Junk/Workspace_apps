.class public final synthetic Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;->f$0:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->lambda$notifyTilesChanged$3$ColorTileQueryHelper(Ljava/util/ArrayList;)V

    return-void
.end method
