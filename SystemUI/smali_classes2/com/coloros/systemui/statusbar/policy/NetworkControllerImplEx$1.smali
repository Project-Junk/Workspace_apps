.class Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;
.super Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;
.source "NetworkControllerImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;->onChange(Z)V

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->access$000(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->getPrimarySlotState(Landroid/content/Context;)I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary slot changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->access$102(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;I)I

    return-void
.end method
