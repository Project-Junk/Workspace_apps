.class Lcom/coloros/systemui/stackdivider/DividerMenu$1;
.super Landroid/os/Handler;
.source "DividerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/stackdivider/DividerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "DividerMenu"

    const-string v2, "StackDivider"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "hide divider menu"

    .line 108
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$200(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenuView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$200(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->hideMenu()V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$002(Lcom/coloros/systemui/stackdivider/DividerMenu;Z)Z

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$300(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$300(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;->onDividerMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show divider menu:isShowing = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$000(Lcom/coloros/systemui/stackdivider/DividerMenu;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$000(Lcom/coloros/systemui/stackdivider/DividerMenu;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$100(Lcom/coloros/systemui/stackdivider/DividerMenu;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    :cond_4
    :goto_0
    return-void
.end method
