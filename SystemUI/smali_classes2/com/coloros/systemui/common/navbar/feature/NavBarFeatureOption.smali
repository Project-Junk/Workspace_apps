.class public Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;
.super Ljava/lang/Object;
.source "NavBarFeatureOption.java"


# static fields
.field private static IS_GESTURE_FOLLOW_SUPPORT:Z = false

.field private static final IS_GESTURE_FOLLOW_SUPPORT_STRING:Ljava/lang/String; = "oppo.common.gesture.follow.support"

.field private static IS_GESTURE_NAVIGATION_DISABLE:Z = false

.field private static final IS_GESTURE_NAVIGATION_DISABLE_STRING:Ljava/lang/String; = "oppo.systemui.disable.gesturenavigation"

.field private static IS_NAV_SUPPORT:Z = false

.field private static IS_ORIGINAL_GESTURE_NAVIGATION_SUPPORT:Z = true

.field private static final IS_SUPPORT_EDGE_GESTURE_STRING:Ljava/lang/String; = "oppo.common.support.edge.gesture"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NavBarFeatureOption"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGestureFollowSupport()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_GESTURE_FOLLOW_SUPPORT:Z

    return v0
.end method

.method public static isGestureNavigationDisable()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_GESTURE_NAVIGATION_DISABLE:Z

    return v0
.end method

.method public static isNavSupport()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_NAV_SUPPORT:Z

    return v0
.end method

.method public static isOriginalGestureNavigationSupport()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_ORIGINAL_GESTURE_NAVIGATION_SUPPORT:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.disable.gesturenavigation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_GESTURE_NAVIGATION_DISABLE:Z

    .line 55
    sget-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_GESTURE_NAVIGATION_DISABLE:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_GESTURE_FOLLOW_SUPPORT:Z

    .line 57
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->IS_NAV_SUPPORT:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasSoftNavigationBar() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "NavBarFeatureOption"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
