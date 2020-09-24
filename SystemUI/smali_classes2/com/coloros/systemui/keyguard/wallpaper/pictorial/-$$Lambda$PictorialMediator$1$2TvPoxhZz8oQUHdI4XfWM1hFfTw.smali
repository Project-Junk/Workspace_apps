.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;->f$0:Ljava/util/List;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;->f$0:Ljava/util/List;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$2TvPoxhZz8oQUHdI4XfWM1hFfTw;->f$1:Z

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;

    invoke-static {v0, p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;->lambda$handleMessage$0(Ljava/util/List;ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V

    return-void
.end method
