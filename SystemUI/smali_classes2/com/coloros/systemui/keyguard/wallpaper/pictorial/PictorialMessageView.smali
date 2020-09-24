.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;
.super Landroid/widget/LinearLayout;
.source "PictorialMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONSTANT_FLOAT_1:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "PictorialMessageView"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAdTagMargin:I

.field private mAdTagTextView:Landroid/widget/TextView;

.field private mClickMoreDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mClickMoreMargin:I

.field private mClickMoreTextView:Landroid/widget/TextView;

.field private mClickMoreWidth:I

.field private mContentString:Ljava/lang/String;

.field private mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

.field private mDescribeMaxLength:I

.field private mFirstContentMaxWidth:I

.field private mIsHide:Z

.field private mPaddingLeftRight:I

.field private mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private mQuickAppOpenCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

.field private mSpace:Ljava/lang/String;

.field private mTvDescribeContent:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, -0x1

    .line 87
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 91
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 384
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mQuickAppOpenCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    .line 92
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    return-object p0
.end method

.method private actionClickDetail(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickDetailIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "type"

    .line 365
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyPictorialFinish(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mQuickAppOpenCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    invoke-static {v0, v1, p1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->openQuickApp(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;)V

    .line 371
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->clickDetail(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyPictorialFinish(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickDetailIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0, p1, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->seePictorialDetails(Landroid/content/Context;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 377
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->clickDetail(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)V

    :goto_0
    return-void
.end method

.method private applyContentView(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getContentColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getContentSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->initClickMoreBgDrawable()V

    .line 227
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->updateTextView(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-void
.end method

.method private getContentSpannableString(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Landroid/text/SpannableString;
    .locals 5

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 235
    new-instance p0, Landroid/text/SpannableString;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 238
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTitleColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 241
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 243
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTitleSize()I

    move-result p2

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 243
    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 98
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private initClickMoreBgDrawable()V
    .locals 7

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 336
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonPressedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    const v2, -0x10100a7

    aput v2, v1, v6

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070418

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreMargin:I

    const v1, 0x7f070415

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPaddingLeftRight:I

    const v1, 0x7f07041f

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagMargin:I

    .line 123
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContext:Landroid/content/Context;

    const v2, 0x7f1104a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mSpace:Ljava/lang/String;

    const v1, 0x7f070428

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mDescribeMaxLength:I

    return-void
.end method

.method private initInLowScreenFingerPrint()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->isLowScreenFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    const v1, 0x7f07042a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0a0065

    .line 110
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    const v0, 0x7f0a05de

    .line 111
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    const v0, 0x7f0a0168

    .line 113
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isForbidClick()Z
    .locals 3

    .line 400
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "PictorialMessageView"

    if-eqz v0, :cond_0

    const-string p0, "isForbidClick : alpha is not 1, return"

    .line 401
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isForbidClick : isOccluded state, return"

    .line 405
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 408
    :cond_1
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mIsHide:Z

    if-eqz p0, :cond_2

    const-string p0, "isForbidClick is Hide, return"

    .line 409
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isLowScreenFingerPrint()Z
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "persist.vendor.fingerprint.optical.iconlocation"

    .line 137
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialMessageView"

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconlocation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x116

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method private isRTL()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setDescribeText()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-nez v0, :cond_1

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "PictorialMessageView"

    if-nez v0, :cond_2

    const-string p0, "text paint is null, why?"

    .line 271
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 275
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {p0, v2, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getContentSpannableString(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n, content.length() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    .line 278
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n, mAdTagTextView.getMeasuredWidth() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    .line 280
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Keyguard"

    .line 276
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->updateViewsLp(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-void
.end method

.method private setGoneAndClearState()V
    .locals 1

    const/16 v0, 0x8

    .line 202
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 204
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    return-void
.end method

.method private updateAdTagView(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 2

    .line 323
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getCopyrightDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getCopyrightDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTextView(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 253
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    return-void

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    .line 257
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->updateAdTagView(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    .line 258
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setDescribeText()V

    return-void
.end method

.method private updateViewsLp(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickDetailIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickDetailIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, -0x1

    const-string v4, "type"

    .line 294
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    .line 297
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 298
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->isFocusMode()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mPaddingLeftRight:I

    mul-int/2addr v0, v4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreWidth:I

    goto :goto_2

    .line 299
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iput v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreWidth:I

    goto :goto_2

    .line 290
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iput v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreWidth:I

    .line 308
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->getMeasuredWidth()I

    move-result p1

    goto :goto_3

    :cond_7
    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mDescribeMaxLength:I

    :goto_3
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mFirstContentMaxWidth:I

    .line 310
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 311
    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mFirstContentMaxWidth:I

    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagMargin:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mAdTagTextView:Landroid/widget/TextView;

    .line 312
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mFirstContentMaxWidth:I

    .line 314
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 315
    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mFirstContentMaxWidth:I

    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mClickMoreMargin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mFirstContentMaxWidth:I

    .line 317
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    .line 318
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 319
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mTvDescribeContent:Landroid/widget/TextView;

    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mFirstContentMaxWidth:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method


# virtual methods
.method public applyWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setGoneAndClearState()V

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setGoneAndClearState()V

    return-void

    .line 177
    :cond_1
    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isSameImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const-string p0, "PictorialMessageView"

    const-string p1, "applyWallpaperChange is same info, no need to update!"

    .line 180
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_2
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const/4 p2, 0x0

    .line 184
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setVisibility(I)V

    .line 185
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->applyContentView(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-void
.end method

.method public clickDetail(Ljava/lang/String;)V
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->isForbidClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PictorialMessageView"

    const-string p1, "clickDetail : isForbidClick, return"

    .line 348
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickDetailIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->actionClickDetail(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 421
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mContentString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mIsHide:Z

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mIsHide:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0168

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "more"

    .line 161
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->clickDetail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 104
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->initViews()V

    .line 105
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->initData()V

    .line 106
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->initInLowScreenFingerPrint()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 209
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 416
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->setAlpha(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mCurrentInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 191
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 198
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageView;->mIsHide:Z

    return-void
.end method
