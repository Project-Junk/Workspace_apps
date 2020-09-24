.class public Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "PipAccessibilityInteractionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_NODE_ID:J = 0x1L


# instance fields
.field private mAccessibilityNodeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    .line 56
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    return-void
.end method

.method private getNodeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    return-object p0
.end method

.method public static obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 186
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 187
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSourceNodeId(JI)V

    .line 189
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 190
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 191
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 192
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 0

    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    :try_start_0
    sget-wide p6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long p1, p1, p6

    if-nez p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->getNodeList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 67
    :goto_0
    invoke-interface {p5, p0, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 145
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 132
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 157
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 0

    const/4 p0, 0x0

    .line 169
    :try_start_0
    invoke-interface {p6, p0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic lambda$performAccessibilityAction$0$PipAccessibilityInteractionConnection()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;->onAccessibilityShowMenu()V

    return-void
.end method

.method public notifyOutsideTouch()V
    .locals 0

    return-void
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 0

    .line 82
    sget-wide p7, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long p1, p1, p7

    const/4 p2, 0x1

    if-nez p1, :cond_3

    const/16 p1, 0x10

    if-eq p3, p1, :cond_2

    const/high16 p1, 0x40000

    if-eq p3, p1, :cond_1

    const/high16 p1, 0x100000

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    goto :goto_1

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto :goto_1

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$yj5JMyeINsNwnRK777qXcVORJV0;

    invoke-direct {p3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$yj5JMyeINsNwnRK777qXcVORJV0;-><init>(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    .line 119
    :goto_1
    :try_start_0
    invoke-interface {p6, p2, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
