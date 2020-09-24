.class public Lcolor/support/v7/app/ColorAlertController;
.super Lcolor/support/v7/app/AlertController;
.source "ColorAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;,
        Lcolor/support/v7/app/ColorAlertController$FadingScrollView;,
        Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;
    }
.end annotation


# static fields
.field private static final DOCKED_INVALID:I = -0x1

.field private static final FULL_SCREEN_FLAG:I = -0x7ffffa00

.field private static final PRIVATE_FLAG_BOTTOM_ALERT_DIALOG:I = 0x1000000

.field private static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field private static final TAG:Ljava/lang/String; = "ColorAlertController"

.field private static final TYPE_SYSTEM_LONG_SHOT:I = 0x8ff


# instance fields
.field private mButtonPaint:Landroid/text/TextPaint;

.field private mButtonPanelStub:Landroid/view/ViewStub;

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsValidateNavigationBar:Z

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    .line 76
    new-instance p2, Lcolor/support/v7/app/ColorAlertController$1;

    iget-object p3, p0, Lcolor/support/v7/app/ColorAlertController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcolor/support/v7/app/ColorAlertController$1;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController;->mObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance p2, Lcolor/support/v7/app/ColorAlertController$2;

    invoke-direct {p2, p0}, Lcolor/support/v7/app/ColorAlertController$2;-><init>(Lcolor/support/v7/app/ColorAlertController;)V

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 115
    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    .line 116
    new-instance p1, Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;-><init>(Lcolor/support/v7/app/ColorAlertController;)V

    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->initButtonPaint()V

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowAttributes()V

    return-void
.end method

.method static synthetic access$300(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateSpaceHeight()V

    return-void
.end method

.method static synthetic access$400(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateBg()V

    return-void
.end method

.method static synthetic access$500(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/ComponentCallbacks;
    .locals 0

    .line 57
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object p0
.end method

.method static synthetic access$502(Lcolor/support/v7/app/ColorAlertController;Landroid/content/ComponentCallbacks;)Landroid/content/ComponentCallbacks;
    .locals 0

    .line 57
    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object p1
.end method

.method static synthetic access$600(Lcolor/support/v7/app/ColorAlertController;)Landroid/database/ContentObserver;
    .locals 0

    .line 57
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private addBottomSpace()V
    .locals 3

    .line 171
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->observeHideNavigationBar()V

    .line 173
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 175
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needAddBottomView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateSpaceHeight()V

    .line 177
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowFlag()V

    .line 178
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 181
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->spaceHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    :cond_1
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .line 296
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "privateFlags"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x40

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPrivateFlag failed.Fail msg is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorAlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buttonCount()I
    .locals 2

    .line 511
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNegativeText()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 519
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 150
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 151
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private hasCustomView()Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 406
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasMessage()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasNegativeText()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasNeutralText()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasPositiveText()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTitle()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initButtonPaint()V
    .locals 3

    .line 121
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    .line 122
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->oppo_dialog_button_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private isCenterDialog()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController;->getDialogType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isDoubleButtons()Z
    .locals 2

    .line 414
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isFullScreen()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.WindowManagerGlobal"

    .line 262
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWindowManagerService"

    .line 263
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 265
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDockedStackSide"

    .line 268
    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 269
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFullScreen operation failed.Return false.Failed msg is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorAlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isGravityCenter()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNavigationBarShow()Z
    .locals 5

    .line 218
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->supportNavigationBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "manual_hide_navigationbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 225
    :goto_0
    iput-boolean v3, p0, Lcolor/support/v7/app/ColorAlertController;->mIsValidateNavigationBar:Z

    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v4
.end method

.method private isPortrait()Z
    .locals 2

    .line 278
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 279
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSingleButton()Z
    .locals 2

    .line 410
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    .line 613
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d3

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-eq v0, v1, :cond_1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x8ff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isTripleButtons()Z
    .locals 2

    .line 418
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private navigationBarHeight()I
    .locals 4

    .line 212
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private needAddBottomView()Z
    .locals 1

    .line 256
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private needClipListView()Z
    .locals 1

    .line 349
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private needSetButtonsVertical()Z
    .locals 6

    .line 496
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 499
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_button_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 500
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->parentWidth()I

    move-result v2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 501
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 502
    :goto_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNegativeText()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_1

    :cond_2
    move v3, v1

    .line 503
    :goto_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-ge v0, v2, :cond_5

    if-ge v3, v2, :cond_5

    if-lt v4, v2, :cond_4

    goto :goto_3

    :cond_4
    return v1

    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method private observeHideNavigationBar()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_hide_navigationbar"

    .line 189
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private parentWidth()I
    .locals 2

    .line 546
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private relayoutListAndMessage(Landroid/view/ViewGroup;)V
    .locals 4

    .line 462
    iget-boolean v0, p0, Lcolor/support/v7/app/ColorAlertController;->mMessageNeedScroll:Z

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 466
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 467
    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 471
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 472
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private relayoutMessageView(Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x102000b

    .line 479
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 480
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/app/ColorAlertController$4;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/app/ColorAlertController$4;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private resetButtonsPadding()V
    .locals 9

    .line 360
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    .line 361
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 362
    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    .line 363
    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 364
    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 365
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 366
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$color;->color_bottom_alert_dialog_button_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 367
    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 368
    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 369
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 370
    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 371
    iget-object v7, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    add-int v8, v3, v4

    invoke-virtual {v7, v0, v1, v2, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 372
    iget-object v7, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMinHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinHeight(I)V

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 374
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v5

    if-nez v5, :cond_0

    .line 375
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 376
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 380
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needSetButtonsVertical()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 382
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 383
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    add-int/2addr v3, v4

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 384
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMinHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_1
    return-void
.end method

.method private setButtonsBackground()V
    .locals 2

    .line 389
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasMessage()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasCustomView()Z

    move-result v0

    if-nez v0, :cond_5

    .line 390
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isSingleButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 393
    :goto_0
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void

    .line 394
    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isDoubleButtons()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 396
    :goto_1
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void

    .line 397
    :cond_4
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isTripleButtons()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 399
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    return-void
.end method

.method private setButtonsHorizontal()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->alert_dialog_horizontal_button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 569
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 570
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->showHorizontalDivider()V

    return-void
.end method

.method private setButtonsVertical()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->alert_dialog_vertical_button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 556
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 558
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->list_divider:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->color_alert_dialog_divider2:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 560
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 562
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setupAnimationAndGravity()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 157
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    sget v1, Lcolor/support/v7/appcompat/R$style;->Animation_ColorSupport_Dialog_Alpha:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x11

    .line 159
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 161
    :cond_0
    sget v1, Lcolor/support/v7/appcompat/R$style;->ColorDialogAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 163
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showHorizontalDivider()V
    .locals 5

    .line 574
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->iv_button_divider_1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 575
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->iv_button_divider_2:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 577
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 578
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 581
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private spaceHeight()I
    .locals 3

    .line 195
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isFullScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->navigationBarHeight()I

    move-result v0

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 205
    :goto_0
    iget-boolean v2, p0, Lcolor/support/v7/app/ColorAlertController;->mIsValidateNavigationBar:Z

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private supportNavigationBar()Z
    .locals 7

    .line 231
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 232
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 237
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x1

    .line 238
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 239
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v5, v2

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    .line 240
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "0"

    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to get navigation bar status message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorAlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v0

    :goto_1
    return v2
.end method

.method private updateBg()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    instance-of v1, v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    if-eqz v1, :cond_1

    .line 312
    check-cast v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    .line 313
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 314
    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setNeedClip(Z)V

    .line 315
    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 317
    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setNeedClip(Z)V

    .line 318
    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    :cond_1
    return-void
.end method

.method private updateSpaceHeight()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 589
    sget v1, Lcolor/support/v7/appcompat/R$id;->alert_dialog_bottom_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 592
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->spaceHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowFlag()V

    .line 597
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 598
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isNavigationBarShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->navigationBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 606
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 609
    :cond_2
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateWindowAttributes()V
    .locals 6

    .line 131
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 132
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 133
    :goto_0
    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const v4, -0x7ffffa00

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/16 v5, 0x51

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    .line 137
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 138
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 139
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    .line 142
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 143
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_central_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private updateWindowFlag()V
    .locals 3

    .line 284
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v0

    const v1, -0x7ffffa00

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 288
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 289
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 290
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected selectContentView()I
    .locals 1

    .line 127
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcolor/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$layout;->color_bottom_alert_dialog:I

    return v0
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 0

    .line 354
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 355
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->resetButtonsPadding()V

    .line 356
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsBackground()V

    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 423
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 426
    sget v0, Lcolor/support/v7/appcompat/R$id;->listPanel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 427
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    sget v1, Lcolor/support/v7/appcompat/R$id;->color_alert_dialog_list_divider:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 431
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 437
    invoke-direct {p0, p1}, Lcolor/support/v7/app/ColorAlertController;->relayoutMessageView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->relayoutListAndMessage(Landroid/view/ViewGroup;)V

    .line 442
    :cond_2
    :goto_0
    new-instance v0, Lcolor/support/v7/app/ColorAlertController$3;

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/app/ColorAlertController$3;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected setupView()V
    .locals 2

    .line 326
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowAttributes()V

    .line 327
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setupAnimationAndGravity()V

    .line 328
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->addBottomSpace()V

    .line 329
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateBg()V

    .line 330
    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 331
    instance-of v1, v0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;

    if-eqz v1, :cond_0

    .line 332
    check-cast v0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;

    .line 333
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needClipListView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->setNeedClip(Z)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->button_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    .line 336
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needSetButtonsVertical()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsHorizontal()V

    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsVertical()V

    .line 345
    :goto_0
    invoke-super {p0}, Lcolor/support/v7/app/AlertController;->setupView()V

    return-void
.end method
