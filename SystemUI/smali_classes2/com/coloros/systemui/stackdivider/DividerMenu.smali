.class public Lcom/coloros/systemui/stackdivider/DividerMenu;
.super Ljava/lang/Object;
.source "DividerMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;
    }
.end annotation


# static fields
.field private static final KEY_MINIMIZED_DIVIDER_MENU:Ljava/lang/String; = "minimized_divider_menu"

.field public static final MENU_BOTTOM:I = 0x2

.field public static final MENU_LEFT_270:I = 0x6

.field public static final MENU_LEFT_90:I = 0x5

.field public static final MENU_RIGHT_270:I = 0x4

.field public static final MENU_RIGHT_90:I = 0x3

.field public static final MENU_TOP:I = 0x1

.field private static final MINIMIZED_DIVIDER_MENU_NUM:I = 0x3

.field private static final MSG_HIDE_DIVIDER_MENU:I = 0x2

.field private static final MSG_SHOW_DIVIDER_MENU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DividerMenu"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayWidth:I

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDividerMenuBg:Landroid/view/View;

.field private mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

.field private mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

.field private mDividerViewMenuTouchListener:Landroid/view/View$OnTouchListener;

.field private mDockedStackExited:Z

.field private mDockedStackMinimized:Z

.field private mDockedStackVisible:Z

.field private mFocusWindow:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private mMenuWindowManager:Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;

.field private mMinimizedAnimDuration:J

.field private mMinimizedShowing:Z

.field private mRotation:I

.field private mStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenu$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerMenu$1;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    .line 379
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerMenu$3;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerViewMenuTouchListener:Landroid/view/View$OnTouchListener;

    .line 405
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenu$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/DividerMenu$4;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 124
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMenuWindowManager:Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;

    .line 126
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 129
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/stackdivider/DividerMenu;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/stackdivider/DividerMenu;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/stackdivider/DividerMenu;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->showDividerMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenuView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuBg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/graphics/RectF;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->calculateHandleViewScreenLocation()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/stackdivider/DividerMenu;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->updateForRotation()V

    return-void
.end method

.method private calculateHandleViewScreenLocation()Landroid/graphics/RectF;
    .locals 7

    .line 452
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getDividerHandlerView()Lcom/android/systemui/stackdivider/DividerHandleView;

    move-result-object p0

    .line 453
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 457
    new-array v1, v1, [I

    .line 458
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 459
    aget v3, v1, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v5, v5

    aget v2, v1, v2

    .line 460
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    int-to-float p0, v1

    .line 459
    invoke-virtual {v0, v3, v5, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v0
.end method

.method private calculateHeight([I)I
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 352
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez v0, :cond_2

    .line 353
    aget p0, p1, v1

    return p0

    .line 355
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayHeight:I

    aget p1, p1, v1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private calculatePosition([I[I)V
    .locals 6

    const/4 v0, 0x2

    .line 311
    new-array v1, v0, [I

    .line 312
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    .line 317
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->getInstance()Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->getRotation(Landroid/content/Context;)I

    move-result v2

    .line 318
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070340

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 319
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    const/4 v4, 0x3

    if-nez v3, :cond_1

    if-ne v4, v2, :cond_2

    :cond_1
    iget v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    const/16 v5, 0x40

    if-ne v3, v5, :cond_3

    if-ne v4, v2, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07033d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07033c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    if-ne v4, v2, :cond_6

    .line 331
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez v0, :cond_5

    iget-boolean p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    if-nez p0, :cond_5

    .line 332
    aput v5, p1, v5

    goto :goto_1

    .line 334
    :cond_5
    aget p0, v1, v5

    add-int/2addr p0, v3

    aput p0, p1, v5

    .line 336
    :goto_1
    aget p0, v1, v5

    add-int/2addr p0, v3

    aput p0, p2, v5

    goto :goto_5

    .line 338
    :cond_6
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    if-nez v0, :cond_7

    .line 339
    aget v0, v1, v5

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    aput v0, p1, v5

    goto :goto_2

    .line 341
    :cond_7
    aput v5, p1, v5

    .line 343
    :goto_2
    aget p1, v1, v5

    add-int/2addr p1, v3

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p0

    aput p1, p2, v5

    goto :goto_5

    .line 324
    :cond_8
    :goto_3
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez v0, :cond_9

    iget-boolean p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    if-nez p0, :cond_9

    .line 325
    aput v5, p1, v4

    goto :goto_4

    .line 327
    :cond_9
    aget p0, v1, v4

    add-int/2addr p0, v3

    aput p0, p1, v4

    .line 329
    :goto_4
    aget p0, v1, v4

    add-int/2addr p0, v3

    aput p0, p2, v4

    :goto_5
    return-void
.end method

.method private calculateWidth([I)I
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 364
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mRotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 365
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez v0, :cond_2

    .line 366
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayWidth:I

    aget p1, p1, v1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    :goto_1
    sub-int/2addr v0, p0

    return v0

    .line 368
    :cond_2
    aget p0, p1, v1

    return p0

    .line 371
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez v0, :cond_4

    .line 372
    aget p0, p1, v1

    return p0

    .line 374
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayWidth:I

    aget p1, p1, v1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method private getCurrentState(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_2

    .line 437
    iget p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    .line 443
    :cond_2
    iget p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    .line 431
    :cond_4
    :goto_0
    iget p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private showDividerMenu()V
    .locals 13

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDividerMenu: mDockedStackVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerMenu"

    const-string v2, "StackDivider"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackVisible:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackExited:Z

    if-nez v0, :cond_0

    .line 136
    iput-boolean v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mIsShowing:Z

    .line 137
    iput-boolean v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedShowing:Z

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->getInstance()Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;

    move-result-object v0

    iget-object v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->getRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mRotation:I

    .line 141
    iget v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mRotation:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->getCurrentState(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mCurrentState:I

    .line 142
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 143
    iget-object v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 144
    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v4, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayWidth:I

    .line 145
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDisplayHeight:I

    .line 146
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->updateStableInset()V

    const/4 v0, 0x2

    .line 147
    new-array v4, v0, [I

    .line 148
    new-array v0, v0, [I

    .line 149
    invoke-direct {p0, v4, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->calculatePosition([I[I)V

    .line 150
    invoke-direct {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->calculateWidth([I)I

    move-result v7

    .line 151
    invoke-direct {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->calculateHeight([I)I

    move-result v8

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget v9, v4, v12

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "];  dividerViewAdjustedPosition:["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]; width:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; height:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    if-nez v0, :cond_1

    move v0, v12

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b8

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/stackdivider/DividerMenuView;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    const v1, 0x7f0a0213

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuBg:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuBg:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerViewMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerViewMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-virtual {v0, p0, v7, v8}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->initDividerMeun(Lcom/coloros/systemui/stackdivider/DividerMenu;II)V

    .line 165
    iget-object v5, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMenuWindowManager:Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;

    iget-object v6, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    aget v9, v4, v3

    aget v10, v4, v12

    iget v11, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mRotation:I

    invoke-virtual/range {v5 .. v11}, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->addView(Landroid/view/View;IIIII)V

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mCurrentState:I

    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->showMenu(IZ)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-virtual {v0, p0, v7, v8}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->initDividerMeun(Lcom/coloros/systemui/stackdivider/DividerMenu;II)V

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mCurrentState:I

    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->showMenu(IZ)V

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMenuWindowManager:Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;

    invoke-virtual {v0, v7, v8, v4}, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->updatePosition(II[I)V

    .line 173
    :goto_1
    iput-boolean v12, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mIsShowing:Z

    .line 174
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    if-eqz p0, :cond_3

    .line 175
    invoke-interface {p0, v12}, Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;->onDividerMenuVisibilityChanged(Z)V

    :cond_3
    return-void
.end method

.method private showMenuForMinimizedDockStack(J)V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;

    move-result-object v0

    const-string v1, "minimized_divider_menu"

    const/4 v2, 0x0

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMenuForMinimizedDockStack: dockedStackMinimized = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";minimizedShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackDivider"

    const-string v4, "DividerMenu"

    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedShowing:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 274
    invoke-virtual {v2, v1, v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    .line 275
    iput-boolean v3, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedShowing:Z

    .line 276
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private updateForRotation()V
    .locals 2

    .line 423
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->getInstance()Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 424
    iget v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->removeMenu()V

    :cond_0
    return-void
.end method

.method private updateStableInset()V
    .locals 2

    .line 465
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v0

    .line 466
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isNavGestureMode()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 469
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideMenu()V
    .locals 3

    const-string v0, "StackDivider"

    const-string v1, "DividerMenu"

    const-string v2, "hideMenu"

    .line 192
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenMenuOperation(Landroid/content/Context;)V

    return-void
.end method

.method public onDraggingEnd()V
    .locals 4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraggingEnd: mMinimizedAnimDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedAnimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "DividerMenu"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-wide v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedAnimDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->showMenuForMinimizedDockStack(J)V

    return-void
.end method

.method public onDraggingStart()V
    .locals 0

    return-void
.end method

.method public onMinimizedDockStackResizeEnd()V
    .locals 2

    const-wide/16 v0, 0x320

    .line 221
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->showMenuForMinimizedDockStack(J)V

    return-void
.end method

.method public removeMenu()V
    .locals 3

    const-string v0, "StackDivider"

    const-string v1, "DividerMenu"

    const-string v2, "removeMenu"

    .line 207
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMenuWindowManager:Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/DividerMenuWindowManager;->removeView()V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mIsShowing:Z

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuView:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    .line 211
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1, v0}, Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;->onDividerMenuVisibilityChanged(Z)V

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenMenuOperation(Landroid/content/Context;)V

    return-void
.end method

.method public setDividerMenuCallback(Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDividerMenuCallback:Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;

    return-void
.end method

.method public setDockeStackVisible(Z)V
    .locals 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDockeStackVisible: visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "DividerMenu"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackVisible:Z

    return-void
.end method

.method public setDockedStackExistsState(Z)V
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDockedStackExistsState: exit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "DividerMenu"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->removeMenu()V

    .line 247
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackExited:Z

    return-void
.end method

.method public setDockedStackMinimized(ZJ)V
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDockedStackMinimized:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "DividerMenu"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    .line 232
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedShowing:Z

    .line 238
    :cond_1
    iput-wide p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mMinimizedAnimDuration:J

    .line 239
    iput-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDockedStackMinimized:Z

    return-void
.end method

.method public setFocusWindow(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mFocusWindow:I

    return-void
.end method

.method public showMenuIfNeed()V
    .locals 3

    const-string v0, "StackDivider"

    const-string v1, "DividerMenu"

    const-string v2, "showMenuIfNeed"

    .line 180
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->getmSplitScreenMenuOperationInfo()Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->setOpenSplitMenuTriggered()V

    return-void
.end method

.method public swapDockedStack()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->swapDockedStack(Landroid/content/Context;)V

    .line 292
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    .line 293
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/stackdivider/DividerMenu$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/stackdivider/DividerMenu$2;-><init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public undockingDockedStack()V
    .locals 1

    .line 304
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->getmSplitScreenMenuOperationInfo()Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->setCloseSplitMenuTriggered()V

    .line 306
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    .line 307
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->onUndockingTask(I)V

    return-void
.end method
