.class Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;
.super Ljava/lang/Object;
.source "HeadsUpHelper.java"

# interfaces
.implements Lcom/coloros/common/util/LogUtil$IDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForGameSpaceOrSA(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

.field final synthetic val$isGameMode:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Z)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iput-boolean p2, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;->val$isGameMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugInfo()Ljava/lang/String;
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--suppressForGameSpaceOrSA isSuppress:true isGameMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;->val$isGameMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " IS_EDGE_PANEL_SUPPORT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isEdgePanelSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsBlockBannerByEP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->access$000(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
