.class public Lcom/coloros/systemui/notification/view/FullScreenBanner;
.super Landroid/widget/LinearLayout;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;,
        Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;,
        Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;
    }
.end annotation


# static fields
.field private static final BANNER_BACKGROUND_PADDING:I = 0x12

.field private static final BUTTON_MAX_LETTER_NUM:I = 0x4

.field private static final HORIZONTAL_TOP_BUTTON_NUM:I = 0x2

.field private static final LONG_CLICK_TIME:I = 0x4b0

.field private static final MAX_BUTTON_NUM:I = 0x4

.field private static final MIN_BUTTON_NUM:I = 0x0

.field private static final SEND_BUTTON_ACTION:Ljava/lang/String; = "oppo.intent.action.fullscreen_send_btn"

.field private static final TOUCH_MOVE_THRESHOLD:I = 0x19

.field private static sSendBtnListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;


# instance fields
.field private mBottomBtnLayout:Landroid/widget/LinearLayout;

.field private mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private mBtnNum:I

.field private mButtonPadding:I

.field private mButtonTextSize:I

.field private mClonedIcon:Landroid/widget/ImageView;

.field private mContentLayoutMaxWidth:I

.field private mContentLayoutMinWidth:I

.field private mIvAppIcon:Landroid/widget/ImageView;

.field private mOrientation:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReplyEditText:Lcom/coloros/systemui/notification/view/RemoteEditText;

.field private mReplyLayout:Landroid/widget/LinearLayout;

.field private mStartPosY:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTopBtnLayout:Landroid/widget/LinearLayout;

.field private mTopLayout:Landroid/widget/RelativeLayout;

.field private mTopLayoutInnerMargin:I

.field private mTopLayoutOuterMargin:I

.field private mTouchDownTime:J

.field private mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

.field private mTvAppName:Landroid/widget/TextView;

.field private mTvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTextPaint:Landroid/text/TextPaint;

    .line 82
    new-instance p2, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;-><init>(Lcom/coloros/systemui/notification/view/FullScreenBanner;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 261
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d016a

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a00be

    .line 262
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mIvAppIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a00ba

    .line 263
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mClonedIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a00c0

    .line 264
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvAppName:Landroid/widget/TextView;

    const p1, 0x7f0a00bb

    .line 265
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvContent:Landroid/widget/TextView;

    const p1, 0x7f0a013b

    .line 267
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopBtnLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a013a

    .line 268
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a04ad

    .line 269
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a05b0

    .line 270
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 272
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayoutOuterMargin:I

    .line 273
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayoutInnerMargin:I

    .line 274
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mContentLayoutMaxWidth:I

    .line 275
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mContentLayoutMinWidth:I

    .line 276
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mButtonTextSize:I

    .line 277
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mButtonPadding:I

    .line 278
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/notification/view/FullScreenBanner;Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setTouchListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/notification/view/FullScreenBanner;Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setSendListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyEditText:Lcom/coloros/systemui/notification/view/RemoteEditText;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/view/FullScreenBanner;Lcom/coloros/systemui/notification/view/RemoteEditText;)Lcom/coloros/systemui/notification/view/RemoteEditText;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyEditText:Lcom/coloros/systemui/notification/view/RemoteEditText;

    return-object p1
.end method

.method static synthetic access$300()Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;
    .locals 1

    .line 46
    sget-object v0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->sSendBtnListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/view/FullScreenBanner;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/view/FullScreenBanner;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setCloned(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/notification/view/FullScreenBanner;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/notification/view/FullScreenBanner;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/notification/view/FullScreenBanner;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setButtonPosition(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method private setButtonPosition(Ljava/util/LinkedHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;)V"
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    .line 314
    iput v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBtnNum:I

    if-lez v0, :cond_4

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_2

    .line 321
    :cond_0
    iget v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mOrientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    .line 323
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    new-array v0, v3, [I

    const v1, 0x7f0a0133

    aput v1, v0, v4

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 339
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v4

    .line 341
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 343
    aget v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 344
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/2addr v1, v3

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0135
        0x7f0a0136
        0x7f0a0137
        0x7f0a0138
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0133
        0x7f0a0134
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0135
        0x7f0a0136
        0x7f0a0137
        0x7f0a0138
    .end array-data
.end method

.method private setCloned(Z)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mClonedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setContent(Ljava/lang/String;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mIvAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLabel(Ljava/lang/String;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSendListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)V
    .locals 0

    .line 356
    sput-object p1, Lcom/coloros/systemui/notification/view/FullScreenBanner;->sSendBtnListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    return-void
.end method

.method private setTouchListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    return-void
.end method


# virtual methods
.method public closeRemoteInput()V
    .locals 3

    const v0, 0x7f0a0133

    .line 458
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0134

    .line 459
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 461
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 462
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public isRemoteInputActive()Z
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 283
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.fullscreen_send_btn"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 291
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-static {}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->getInstance()Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->dispatchOnClick(Z)V

    .line 417
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 9

    const v0, 0x7f0a0133

    .line 368
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 369
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 372
    iget-object v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->measureChild(Landroid/view/View;II)V

    .line 373
    iget-object v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mIvAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->measureChild(Landroid/view/View;II)V

    .line 374
    iget-object v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvAppName:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->measureChild(Landroid/view/View;II)V

    .line 375
    iget-object v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->measureChild(Landroid/view/View;II)V

    .line 377
    iget-object v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 378
    iget-object v3, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mIvAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 379
    iget-object v4, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvAppName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 380
    iget-object v5, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 381
    iget v6, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayoutOuterMargin:I

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    iget v8, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayoutInnerMargin:I

    mul-int/2addr v8, v7

    add-int/2addr v6, v8

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 383
    iget v3, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mButtonTextSize:I

    mul-int/lit8 v4, v3, 0x4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    mul-int/lit8 v3, v3, 0x4

    int-to-float v1, v3

    .line 386
    :cond_0
    iget v3, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mButtonPadding:I

    mul-int/2addr v3, v7

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mButtonTextSize:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 387
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 389
    iget v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mContentLayoutMinWidth:I

    if-ge v6, v0, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mContentLayoutMaxWidth:I

    if-le v6, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v6

    .line 395
    :goto_0
    iget v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBtnNum:I

    if-le v1, v7, :cond_3

    .line 396
    iget v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mContentLayoutMaxWidth:I

    .line 399
    :cond_3
    iget v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mOrientation:I

    if-ne v1, v7, :cond_4

    .line 400
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 401
    iget v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBtnNum:I

    if-le v0, v7, :cond_4

    .line 402
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mContentLayoutMaxWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 406
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    .line 434
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mStartPosY:I

    sub-int v2, v0, p1

    if-gez v2, :cond_1

    sub-int p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v2, 0x19

    if-le p1, v2, :cond_1

    .line 435
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    if-eqz p1, :cond_4

    .line 436
    invoke-interface {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;->onMoveUp()V

    const/4 p1, 0x0

    .line 437
    iput p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mStartPosY:I

    goto :goto_0

    .line 439
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mStartPosY:I

    if-ne v0, p1, :cond_4

    .line 440
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    if-eqz p1, :cond_4

    const/16 p1, 0x12

    if-le v0, p1, :cond_4

    .line 442
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, p1

    if-ge v0, v2, :cond_4

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchDownTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    .line 444
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    invoke-interface {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;->onClick()V

    goto :goto_0

    .line 446
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    invoke-interface {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;->onLongClick()V

    goto :goto_0

    .line 427
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mTouchDownTime:J

    .line 428
    iput v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mStartPosY:I

    :cond_4
    :goto_0
    return v1
.end method

.method public updateBanner(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)V
    .locals 1

    .line 233
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1200(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1300(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setCloned(Z)V

    .line 235
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1400(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setLabel(Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1500(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setContent(Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1600(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setButtonPosition(Ljava/util/LinkedHashMap;)V

    .line 238
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1700(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setTouchListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)V

    .line 239
    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$1800(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setSendListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)V

    .line 242
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner;->mBottomBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0a0133

    .line 248
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0134

    .line 249
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
