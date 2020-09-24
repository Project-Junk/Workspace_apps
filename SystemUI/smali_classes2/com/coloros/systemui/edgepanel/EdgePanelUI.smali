.class public Lcom/coloros/systemui/edgepanel/EdgePanelUI;
.super Lcom/android/systemui/SystemUI;
.source "EdgePanelUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/coloros/systemui/stackdivider/ISplitScreenListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EdgePanelUI"


# instance fields
.field private mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

.field private final mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 34
    new-instance v0, Lcom/coloros/systemui/edgepanel/EdgePanelUI$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/edgepanel/EdgePanelUI$1;-><init>(Lcom/coloros/systemui/edgepanel/EdgePanelUI;)V

    iput-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/edgepanel/EdgePanelUI;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->updateToggle()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelUI"

    const-string v2, "init()"

    .line 67
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/Divider;->addCallback(Lcom/coloros/systemui/stackdivider/ISplitScreenListener;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->registerForUserSwitch(Landroid/content/Context;IZ)V

    .line 70
    new-instance p1, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    .line 71
    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->updateToggle()V

    return-void
.end method

.method private updateToggle()V
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateToggle() toggle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;

    invoke-virtual {v1}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->isToggleOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgePanel"

    const-string v2, "EdgePanelUI"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;

    invoke-virtual {v0}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->isToggleOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;->switchOn()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;->switchOff()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDockedStackExistsChanged(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;

    invoke-virtual {v0}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->isToggleOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;->onDockedStackExistsChanged(Z)V

    :cond_0
    return-void
.end method

.method public onMinimize(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mToggleObserver:Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;

    invoke-virtual {v0}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->isToggleOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mEdgePanelHelper:Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/edgepanel/IEdgePanelHelper;->onMinimize(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "EdgePanel"

    const-string v1, "EdgePanelUI"

    const-string v2, "start"

    .line 44
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;->isEdgePanelDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 49
    const-class v0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;

    invoke-virtual {p0, v0, p0}, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->init(Landroid/content/Context;)V

    return-void
.end method
