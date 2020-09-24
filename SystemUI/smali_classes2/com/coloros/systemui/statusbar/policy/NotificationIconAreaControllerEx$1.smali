.class Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;
.super Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;
.source "NotificationIconAreaControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;->onChange(Z)V

    .line 47
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->access$100(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->getNotificationPromptModeState(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->access$002(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;I)I

    .line 48
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange---setting change mNotificationShowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->access$000(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateStatusBarIcons()V

    return-void
.end method
