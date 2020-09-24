.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;
    }
.end annotation


# static fields
.field private static final SELF_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TIMEOUT:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPackagesShownInSession:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    .line 52
    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityDismissingDockedStack()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method private activityDismissingDockedStack()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->showDismissingDockedStackToast()V

    .line 136
    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->activityDismissingDockedStack(Landroid/content/Context;)V

    return-void
.end method

.method private activityForcedResizable(Ljava/lang/String;II)V
    .locals 1

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->debounce(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;II)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->postTimeout()V

    return-void
.end method

.method private activityLaunchOnSecondaryDisplayFailed()V
    .locals 2

    .line 141
    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const v0, 0x7f110114

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private debounce(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.android.systemui"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private postTimeout()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPending()V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;

    .line 149
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 151
    iget v5, v2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 154
    invoke-virtual {v4, v1, v1}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 155
    iget v2, v2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->reason:I

    const-string v5, "extra_forced_resizeable_reason"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method


# virtual methods
.method public notifyDockedStackExistsChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_0
    return-void
.end method

.method public onAppTransitionFinished()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDragging:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    :cond_0
    return-void
.end method

.method onDraggingEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDragging:Z

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method onDraggingStart()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDragging:Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
