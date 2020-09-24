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

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    .line 75
    new-instance p2, Lcolor/support/v7/app/ColorAlertController$1;

    iget-object p3, p0, Lcolor/support/v7/app/ColorAlertController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcolor/support/v7/app/ColorAlertController$1;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController;->mObserver:Landroid/database/ContentObserver;

    .line 89
    new-instance p2, Lcolor/support/v7/app/ColorAlertController$2;

    invoke-direct {p2, p0}, Lcolor/support/v7/app/ColorAlertController$2;-><init>(Lcolor/support/v7/app/ColorAlertController;)V

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 114
    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    .line 115
    new-instance p1, Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/ColorAlertController$BottomSpaceHandler;-><init>(Lcolor/support/v7/app/ColorAlertController;)V

    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->initButtonPaint()V

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowAttributes()V

    return-void
.end method

.method static synthetic access$300(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateSpaceHeight()V

    return-void
.end method

.method static synthetic access$400(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateBg()V

    return-void
.end method

.method static synthetic access$500(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/ComponentCallbacks;
    .locals 0

    .line 56
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object p0
.end method

.method static synthetic access$502(Lcolor/support/v7/app/ColorAlertController;Landroid/content/ComponentCallbacks;)Landroid/content/ComponentCallbacks;
    .locals 0

    .line 56
    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object p1
.end method

.method static synthetic access$600(Lcolor/support/v7/app/ColorAlertController;)Landroid/database/ContentObserver;
    .locals 0

    .line 56
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private addBottomSpace()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->observeHideNavigationBar()V

    .line 172
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needAddBottomView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateSpaceHeight()V

    .line 176
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowFlag()V

    .line 177
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 179
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 180
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->spaceHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 182
    :cond_1
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 295
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "privateFlags"

    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x40

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPrivateFlag failed.Fail msg is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorAlertController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private buttonCount()I
    .locals 2

    .line 510
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNegativeText()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 518
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 2

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 149
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 150
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private hasCustomView()Z
    .locals 1

    .line 404
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcolor/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasMessage()Z
    .locals 0

    .line 537
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasNegativeText()Z
    .locals 0

    .line 529
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasNeutralText()Z
    .locals 0

    .line 533
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasPositiveText()Z
    .locals 0

    .line 525
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasTitle()Z
    .locals 0

    .line 541
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initButtonPaint()V
    .locals 2

    .line 120
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    .line 121
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->oppo_dialog_button_text_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private isCenterDialog()Z
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController;->getDialogType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDoubleButtons()Z
    .locals 1

    .line 413
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFullScreen()Z
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 261
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    .line 262
    new-array v2, p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 264
    new-array v3, p0, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDockedStackSide"

    .line 267
    new-array v4, p0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 268
    new-array v3, p0, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move p0, v1

    :cond_0
    return p0

    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFullScreen operation failed.Return false.Failed msg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isGravityCenter()Z
    .locals 1

    .line 251
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNavigationBarShow()Z
    .locals 5

    .line 217
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->supportNavigationBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
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

    .line 224
    :goto_0
    iput-boolean v3, p0, Lcolor/support/v7/app/ColorAlertController;->mIsValidateNavigationBar:Z

    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    if-nez v2, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    return v1
.end method

.method private isPortrait()Z
    .locals 1

    .line 277
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 278
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSingleButton()Z
    .locals 1

    .line 409
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    .line 612
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7f6

    if-eq p0, v0, :cond_1

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x8ff

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTripleButtons()Z
    .locals 1

    .line 417
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private navigationBarHeight()I
    .locals 3

    .line 211
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 212
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private needAddBottomView()Z
    .locals 1

    .line 255
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isFullScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needClipListView()Z
    .locals 1

    .line 348
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needSetButtonsVertical()Z
    .locals 5

    .line 495
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 498
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_button_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 499
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->parentWidth()I

    move-result v2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 500
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

    .line 501
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

    .line 502
    :goto_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPaint:Landroid/text/TextPaint;

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    if-ge v0, v2, :cond_4

    if-ge v3, v2, :cond_4

    if-lt p0, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private observeHideNavigationBar()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_hide_navigationbar"

    .line 188
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private parentWidth()I
    .locals 2

    .line 545
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 550
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private relayoutListAndMessage(Landroid/view/ViewGroup;)V
    .locals 3

    .line 461
    iget-boolean v0, p0, Lcolor/support/v7/app/ColorAlertController;->mMessageNeedScroll:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 464
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 465
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 466
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 469
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 470
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 471
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 472
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private relayoutMessageView(Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x102000b

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 479
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/app/ColorAlertController$4;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/app/ColorAlertController$4;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private resetButtonsPadding()V
    .locals 9

    .line 359
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    .line 360
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 361
    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    .line 362
    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 363
    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 364
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 365
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$color;->color_bottom_alert_dialog_button_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 366
    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 367
    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 368
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 369
    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 370
    iget-object v7, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    add-int v8, v3, v4

    invoke-virtual {v7, v0, v1, v2, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 371
    iget-object v7, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMinHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinHeight(I)V

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 373
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v5

    if-nez v5, :cond_0

    .line 374
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 375
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 379
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needSetButtonsVertical()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 381
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 382
    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    add-int/2addr v3, v4

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 383
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getMinHeight()I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_1
    return-void
.end method

.method private setButtonsBackground()V
    .locals 1

    .line 388
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

    .line 389
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isSingleButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasNeutralText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 392
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 393
    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isDoubleButtons()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 395
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 396
    :cond_4
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isTripleButtons()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 398
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private setButtonsHorizontal()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->alert_dialog_horizontal_button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 568
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 569
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->showHorizontalDivider()V

    return-void
.end method

.method private setButtonsVertical()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->alert_dialog_vertical_button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 555
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 557
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->list_divider:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->color_alert_dialog_divider2:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 559
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result p0

    if-nez p0, :cond_1

    .line 562
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupAnimationAndGravity()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 156
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget v1, Lcolor/support/v7/appcompat/R$style;->Animation_ColorSupport_Dialog_Alpha:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x11

    .line 158
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 160
    :cond_0
    sget v1, Lcolor/support/v7/appcompat/R$style;->ColorDialogAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 162
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showHorizontalDivider()V
    .locals 5

    .line 573
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->iv_button_divider_1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 574
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->iv_button_divider_2:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 576
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 577
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->buttonCount()I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 580
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private spaceHeight()I
    .locals 3

    .line 194
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isFullScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 199
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->navigationBarHeight()I

    move-result v0

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 204
    :goto_0
    iget-boolean p0, p0, Lcolor/support/v7/app/ColorAlertController;->mIsValidateNavigationBar:Z

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private supportNavigationBar()Z
    .locals 6

    .line 230
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 231
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 236
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    .line 237
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 238
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    move p0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get navigation bar status message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p0
.end method

.method private updateBg()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    instance-of v1, v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    if-eqz v1, :cond_1

    .line 311
    check-cast v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    .line 312
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 313
    invoke-virtual {v0, p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setNeedClip(Z)V

    .line 314
    invoke-virtual {v0, p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 316
    invoke-virtual {v0, p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setNeedClip(Z)V

    .line 317
    invoke-virtual {v0, p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpaceHeight()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 588
    sget v1, Lcolor/support/v7/appcompat/R$id;->alert_dialog_bottom_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 591
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->spaceHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowFlag()V

    .line 596
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 597
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isNavigationBarShow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 599
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 602
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->navigationBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 605
    :cond_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 608
    :cond_3
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateWindowAttributes()V
    .locals 6

    .line 130
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 131
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const v4, -0x7ffffa00

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/16 v5, 0x51

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    .line 136
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 137
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x2

    .line 138
    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 140
    :cond_1
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    .line 141
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 142
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 143
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_central_max_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    return-void
.end method

.method private updateWindowFlag()V
    .locals 3

    .line 283
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isGravityCenter()Z

    move-result v0

    const v1, -0x7ffffa00

    if-eqz v0, :cond_0

    .line 284
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 287
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 288
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 289
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected selectContentView()I
    .locals 1

    .line 126
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcolor/support/v7/app/AlertController;->selectContentView()I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcolor/support/v7/appcompat/R$layout;->color_bottom_alert_dialog:I

    :goto_0
    return p0
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 0

    .line 353
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 354
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->resetButtonsPadding()V

    .line 355
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsBackground()V

    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 422
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 425
    sget v0, Lcolor/support/v7/appcompat/R$id;->listPanel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 426
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    sget v1, Lcolor/support/v7/appcompat/R$id;->color_alert_dialog_list_divider:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 430
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 436
    invoke-direct {p0, p1}, Lcolor/support/v7/app/ColorAlertController;->relayoutMessageView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->relayoutListAndMessage(Landroid/view/ViewGroup;)V

    .line 441
    :cond_2
    :goto_0
    new-instance v0, Lcolor/support/v7/app/ColorAlertController$3;

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/app/ColorAlertController$3;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected setupView()V
    .locals 2

    .line 325
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateWindowAttributes()V

    .line 326
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setupAnimationAndGravity()V

    .line 327
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->addBottomSpace()V

    .line 328
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->updateBg()V

    .line 329
    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 330
    instance-of v1, v0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;

    .line 332
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needClipListView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->setNeedClip(Z)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->button_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->mButtonPanelStub:Landroid/view/ViewStub;

    .line 335
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->isCenterDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->needSetButtonsVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsVertical()V

    goto :goto_0

    .line 339
    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsHorizontal()V

    goto :goto_0

    .line 342
    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->setButtonsVertical()V

    .line 344
    :goto_0
    invoke-super {p0}, Lcolor/support/v7/app/AlertController;->setupView()V

    return-void
.end method
