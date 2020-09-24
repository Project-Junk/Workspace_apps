.class public Lcom/coloros/systemui/airview/AirViewUI;
.super Lcom/android/systemui/SystemUI;
.source "AirViewUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/coloros/systemui/stackdivider/ISplitScreenListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirViewUI"


# instance fields
.field private mObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 19
    new-instance v0, Lcom/coloros/systemui/airview/AirViewUI$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/airview/AirViewUI$1;-><init>(Lcom/coloros/systemui/airview/AirViewUI;)V

    iput-object v0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AirView"

    const-string v1, "AirViewUI"

    const-string v2, "init"

    .line 56
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/Divider;->addCallback(Lcom/coloros/systemui/stackdivider/ISplitScreenListener;)V

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    const-string v0, "air_view_toggle"

    invoke-static {p0, v0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->getToggleState(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 60
    sget-object p0, Lcom/coloros/systemui/airview/AirViewHelper;->sInstance:Landroid/util/Singleton;

    invoke-virtual {p0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->register(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDockedStackExistsChanged(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDockedStackExistsChanged dock is open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AirView"

    const-string v2, "AirViewUI"

    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    const-string p1, "air_view_split_screen_toggle"

    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->setToggleState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "AirView"

    const-string v1, "AirViewUI"

    const-string v2, "start AirViewUI"

    .line 49
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 51
    const-class v0, Lcom/coloros/systemui/airview/AirViewUI;

    invoke-virtual {p0, v0, p0}, Lcom/coloros/systemui/airview/AirViewUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/airview/AirViewUI;->init(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterObserver()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;)V

    return-void
.end method
