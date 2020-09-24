.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"

# interfaces
.implements Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
    }
.end annotation


# static fields
.field private static final MSG_EXIT_DATA_TRACKING:I = 0xc8

.field private static final MSG_FOCUS_WINDOW_CHANGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Divider"


# instance fields
.field private mAdjustedForIme:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/stackdivider/ISplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

.field private mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mFocusWindow:I

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mHandler:Landroid/os/Handler;

.field private mHomeStackResizable:Z

.field private mMinimized:Z

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 58
    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mCallbacks:Ljava/util/List;

    .line 408
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$4;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    .line 464
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$5;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/Divider;ZJZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusWindow:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/coloros/systemui/stackdivider/DividerMenu;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/Divider;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/Divider;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_dimen_docked_stack_divider_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 117
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    const/4 p1, -0x1

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;II)V

    return-void
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeDivider()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onDividerRemoved()V

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    return-void
.end method

.method private declared-synchronized update(Landroid/content/res/Configuration;)V
    .locals 2

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->removeMenu()V

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    .line 142
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateMinimizedDockedStack(ZJZ)V
    .locals 8

    .line 173
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/systemui/stackdivider/DividerMenu;->setDockedStackMinimized(ZJ)V

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMinimizedDockedStack minimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";animDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";isHomeStackResizable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "Divider"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v7, Lcom/android/systemui/stackdivider/Divider$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZZJ)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTouchable()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/coloros/systemui/stackdivider/ISplitScreenListener;)V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  mVisible="

    .line 290
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mMinimized="

    .line 291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAdjustedForIme="

    .line 292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getDividerHandlerView()Lcom/android/systemui/stackdivider/DividerHandleView;
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getHandleView()Lcom/android/systemui/stackdivider/DividerHandleView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusWindow()I
    .locals 0

    .line 396
    iget p0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusWindow:I

    return p0
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object p0
.end method

.method public growRecents()V
    .locals 1

    .line 282
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->growRecents()V

    :cond_0
    return-void
.end method

.method public hideMenu()V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    :cond_0
    return-void
.end method

.method public isHomeStackResizable()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p0
.end method

.method public onAppTransitionFinished()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onAppTransitionFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDockedFirstAnimationFrame()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onDockedFirstAnimationFrame()V

    :cond_0
    return-void
.end method

.method public onDockedTopTask()V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onDockedTopTask()V

    :cond_0
    return-void
.end method

.method public onDraggingEnd()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onDraggingEnd()V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->onDraggingEnd()V

    :cond_0
    return-void
.end method

.method public onDraggingStart()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onDraggingStart()V

    .line 263
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->onDraggingStart()V

    :cond_0
    return-void
.end method

.method public onMinimizedDockStackResizeEnd()V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->onMinimizedDockStackResizeEnd()V

    :cond_0
    return-void
.end method

.method public onMultiWindowFocusChanged(I)V
    .locals 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowFocusChanged focuswin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "Divider"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusWindow:I

    .line 402
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onRecentsActivityStarting()V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onRecentsActivityStarting()V

    :cond_0
    return-void
.end method

.method public onRecentsDrawn()V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onRecentsDrawn()V

    :cond_0
    return-void
.end method

.method public onUndockingTask()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onUndockingTask()V

    :cond_0
    return-void
.end method

.method public onUndockingTask(I)V
    .locals 0

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->removeMenu()V

    .line 386
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onUndockingTask(I)V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/coloros/systemui/stackdivider/ISplitScreenListener;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMenu()V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz p0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->removeMenu()V

    :cond_0
    return-void
.end method

.method public showMenuIfNeed()V
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    if-eqz p0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->showMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 72
    new-instance v0, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 73
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 75
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    .line 77
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Divider"

    const-string v2, "Failed to register docked stack listener"

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_0
    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 85
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    .line 86
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenu;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenu:Lcom/coloros/systemui/stackdivider/DividerMenu;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->setDividerMenuCallback(Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;)V

    return-void
.end method
