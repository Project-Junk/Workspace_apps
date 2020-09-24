.class Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationRunner"
.end annotation


# instance fields
.field private mCornerRadius:F

.field private mIsFullScreenLaunch:Z

.field private final mNotificationCornerRadius:F

.field private final mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

.field private final mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final mSyncRtTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final mWindowCrop:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 153
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mWindowCrop:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mIsFullScreenLaunch:Z

    .line 160
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 161
    new-instance p1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 162
    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSyncRtTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCurrentTopRoundness()F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 164
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCurrentBottomRoundness()F

    move-result p2

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mNotificationCornerRadius:F

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToWindow(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotification(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotificationList(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->setExpandAnimationRunning(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;F)F
    .locals 0

    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mCornerRadius:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)F
    .locals 0

    .line 149
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mNotificationCornerRadius:F

    return p0
.end method

.method private applyParamsToNotification(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method private applyParamsToNotificationList(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 295
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method private applyParamsToWindow(Landroid/view/RemoteAnimationTarget;)V
    .locals 10

    .line 303
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->top:I

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->left:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->right:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    new-instance v9, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mWindowCrop:Landroid/graphics/Rect;

    iget v5, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mCornerRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;FLandroid/graphics/Matrix;Landroid/graphics/Rect;IFZ)V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSyncRtTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v9, p1, v8

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method private getPrimaryRemoteAnimationTarget([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .locals 3

    .line 270
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 271
    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 261
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setExpandAnimationRunning(Z)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingNotification(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setExpandAnimationRunning(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$302(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)Z

    if-nez p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mIsFullScreenLaunch:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;->onExpandAnimationFinished(Z)V

    .line 287
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotification(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 288
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotificationList(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationCancelled$1$ActivityLaunchAnimator$AnimationRunner()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V

    .line 315
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;->onLaunchAnimationCancelled()V

    return-void
.end method

.method public synthetic lambda$onAnimationStart$0$ActivityLaunchAnimator$AnimationRunner([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 8

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->getPrimaryRemoteAnimationTarget([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    const/4 p1, 0x0

    if-nez v4, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V

    .line 188
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->setExpandAnimationRunning(Z)V

    .line 194
    iget-object v1, v4, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-nez v1, :cond_1

    iget-object v1, v4, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 195
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 196
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mIsFullScreenLaunch:Z

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mIsFullScreenLaunch:Z

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapseWithDuration(I)V

    :cond_2
    const/4 v0, 0x2

    .line 200
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLocationOnScreen()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startPosition:[I

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationZ()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startTranslationZ:F

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 206
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iput v0, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->parentStartClipTopAmount:I

    if-eqz v0, :cond_3

    int-to-float v0, v0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 212
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    .line 218
    :cond_3
    iget-object v0, v4, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 220
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getClipBottomAmount()I

    move-result v1

    sub-int v5, v0, v1

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getWidth()I

    move-result v2

    const-wide/16 v0, 0x190

    .line 222
    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    new-instance v7, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;IILandroid/view/RemoteAnimationTarget;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationCancelled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$M-3NAwVAMqbtd1nWxQdGu3JgCNY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$M-3NAwVAMqbtd1nWxQdGu3JgCNY;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart--isAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 177
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "ActivityLaunchAnimator"

    .line 176
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    .line 182
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
