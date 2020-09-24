.class public Lcom/coloros/systemui/gesture/TransientBarController;
.super Ljava/lang/Object;
.source "TransientBarController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransientBarController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTransient()Z
    .locals 2

    .line 14
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTransient window visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "TransientBarController"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
