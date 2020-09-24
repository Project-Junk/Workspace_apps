.class public Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;
.super Ljava/lang/Object;
.source "ColorSideGestureViewManager.java"


# instance fields
.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mBackIcon:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

.field private mContext:Landroid/content/Context;

.field private mDisableIcon:Landroid/graphics/Bitmap;

.field private mDisplay:Landroid/view/Display;

.field private mHasCreated:Z

.field private mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

.field private mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

.field private mRotation:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/WindowManager;Landroid/view/Display;Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mHasCreated:Z

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 62
    iput-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    .line 63
    iput-object p4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisplay:Landroid/view/Display;

    .line 64
    iput-object p5, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    .line 66
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    iget-object p4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    invoke-direct {p1, p2, v0, p3, p4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;-><init>(Landroid/content/Context;IILcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    .line 67
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    iget-object p4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    const/4 p5, 0x1

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;-><init>(Landroid/content/Context;IILcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    return-void
.end method

.method private adjustBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 238
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v3

    div-float/2addr p0, v0

    .line 239
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 240
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 241
    invoke-virtual {v5, p0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 242
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createIcon()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mBackIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080dd6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mBackIcon:Landroid/graphics/Bitmap;

    .line 214
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mBackIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setBackIcon(Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mBackIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setBackIcon(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080dd7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setDisableIcon(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setDisableIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getSideViewLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 182
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7eb

    .line 183
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    .line 184
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x1800738

    .line 185
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    if-nez p1, :cond_0

    const-string p1, "ColorSideGestureLeft"

    .line 194
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowHeight(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 196
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowWidth()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p1, 0x0

    .line 198
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 199
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result p1

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowHeight(I)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const-string p1, "ColorSideGestureRight"

    .line 201
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowHeight(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 203
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowWidth()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 205
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenWidth(I)I

    move-result p1

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 206
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result p1

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowHeight(I)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private recycleIcon()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mBackIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public createView()V
    .locals 6

    .line 71
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mHasCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    iget-object v5, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;-><init>(Landroid/content/Context;IILcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onConfigChanged(I)V

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->getSideViewLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    iget-object v5, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;-><init>(Landroid/content/Context;IILcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onConfigChanged(I)V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->getSideViewLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->createIcon()V

    .line 86
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mHasCreated:Z

    return-void
.end method

.method public destroyView()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mHasCreated:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleIcon()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mHasCreated:Z

    return-void
.end method

.method public isDisableIcon()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExitAnimFinished(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->isExitAnimFinished()Z

    move-result p0

    return p0
.end method

.method public onConfigChanged()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->getSideViewLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->getSideViewLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onConfigChanged(I)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mRotation:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onConfigChanged(I)V

    return-void
.end method

.method public onDownEvent(IZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onDownEvent()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onDownEvent()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 154
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    .line 155
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setAppIcon(Landroid/graphics/Bitmap;)V

    .line 156
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setAppIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 159
    :cond_2
    :try_start_0
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 160
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->getPreAppIcon()V

    :cond_3
    const-string p0, "NavBar"

    const-string p1, "ColorSideGesture"

    const-string p2, "ColorSideGestureViewManager getNextAppIcon"

    .line 162
    invoke-static {p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGetAppIcon(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGestureViewManager icon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "ColorSideGesture"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setAppIcon(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setAppIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mDisableIcon:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_1

    .line 106
    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->adjustBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    .line 109
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setAppIcon(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setAppIcon(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onSwipeFailed()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->resetState()V

    .line 124
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->resetState()V

    return-void
.end method

.method public onUpEvent(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 171
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onUpEvent()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onUpEvent()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdateGestureView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavLeftView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onUpdateGestureView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->mNavRightView:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->onUpdateGestureView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    :cond_1
    :goto_0
    return-void
.end method
