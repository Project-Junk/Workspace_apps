.class Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "RingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/RingerModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/RingerModeTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/RingerModeTile;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/RingerModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/RingerModeTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->access$000(Lcom/coloros/systemui/qs/tiles/RingerModeTile;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    .line 163
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/RingerModeTile;

    invoke-static {p2}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->access$100(Lcom/coloros/systemui/qs/tiles/RingerModeTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION:ringstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    invoke-static {v0, p2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/RingerModeTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->refreshState()V

    :cond_0
    return-void
.end method
