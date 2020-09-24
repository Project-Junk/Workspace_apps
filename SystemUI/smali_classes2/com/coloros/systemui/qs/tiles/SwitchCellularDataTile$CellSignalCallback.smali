.class final Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "SwitchCellularDataTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSignalCallback"
.end annotation


# instance fields
.field private final mInfo:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;)V
    .locals 1

    .line 279
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance p1, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;-><init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$1;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->mInfo:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;-><init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;)Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->mInfo:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    return-object p0
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->mInfo:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, v0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 291
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->mInfo:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->access$800(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    .line 284
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->mInfo:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    iput-boolean p1, p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->noSim:Z

    .line 285
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;

    invoke-static {p0, p2}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->access$700(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Ljava/lang/Object;)V

    return-void
.end method
