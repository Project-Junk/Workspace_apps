.class public Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_SEQUENCE_NUMBER:I


# instance fields
.field private mAfterApplyCallback:Ljava/lang/Runnable;

.field private final mApplyHandler:Landroid/os/Handler;

.field private mPendingSequenceNumber:I

.field private mSequenceNumber:I

.field private final mTargetSurface:Landroid/view/Surface;

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 47
    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    .line 57
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$1;-><init>(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->onApplyMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/Surface;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static applyParams(Lcom/android/systemui/shared/system/TransactionCompat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 2

    .line 144
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 145
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 146
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 147
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/TransactionCompat;->setLayer(Lcom/android/systemui/shared/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 148
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/TransactionCompat;->setCornerRadius(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 149
    iget-object p1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Lcom/android/systemui/shared/system/SurfaceControlCompat;)Lcom/android/systemui/shared/system/TransactionCompat;

    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 160
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$4;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private onApplyMessage(I)V
    .locals 1

    .line 70
    iput p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 71
    iget p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 74
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAfterApplyCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 124
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne v0, v1, :cond_0

    .line 125
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 128
    iput-object p1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 131
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$3;-><init>(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 90
    iget v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 91
    iget-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v2, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$2;-><init>(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;I[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
