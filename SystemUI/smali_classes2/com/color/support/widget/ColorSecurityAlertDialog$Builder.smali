.class public Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSecurityAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mButtonNegativeString:Ljava/lang/String;

.field private mButtonPositiveString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasCheckBox:Z

.field private mIsChecked:Z

.field private mIsShowStatementText:Z

.field private mLinkId:I

.field private mMessage:Ljava/lang/String;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

.field private mStatementId:I

.field private mTheme:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-direct {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mHasCheckBox:Z

    .line 108
    new-instance v0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 126
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-direct {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mHasCheckBox:Z

    .line 108
    new-instance v0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 138
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 139
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 140
    iput p2, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mTheme:I

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsChecked:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .line 144
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 145
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_security_alert_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$402(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 146
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    .line 147
    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$400(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_security_alertdailog_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$502(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 148
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$400(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_security_alertdialog_statement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$602(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 149
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$400(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_security_alertdailog_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$702(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    const/4 p1, -0x1

    .line 150
    iput p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mStatementId:I

    .line 151
    iput p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mLinkId:I

    .line 152
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "get"

    const/4 v1, 0x2

    .line 155
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ro.oppo.regionmark"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "EUEX"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsShowStatementText:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private relayoutMessageView()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$500(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$7;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$7;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/color/support/widget/ColorSecurityAlertDialog;
    .locals 8

    .line 379
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsShowStatementText:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    :goto_0
    iget v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mLinkId:I

    if-gtz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v3, Lcolor/support/v7/appcompat/R$string;->color_security_alertdailog_privacy:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_1
    iget v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mStatementId:I

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    .line 394
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v5, Lcolor/support/v7/appcompat/R$string;->color_security_alertdailog_statement:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 396
    :cond_2
    iget-object v5, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 399
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 402
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v3, Lcom/color/support/widget/ColorClickableSpan;

    iget-object v6, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 405
    new-instance v6, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$2;

    invoke-direct {v6, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$2;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    invoke-virtual {v3, v6}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    add-int v6, v4, v0

    const/16 v7, 0x21

    .line 414
    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 415
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v3}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 416
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v3}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v3}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 419
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->TD05:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v5, 0x5

    .line 421
    iget-object v6, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v3, v3

    .line 422
    invoke-static {v3, v6, v5}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v3

    float-to-int v3, v3

    .line 423
    iget-object v7, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v7}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 425
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v3}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v7, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$3;

    invoke-direct {v7, p0, v4, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$3;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 456
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$500(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->TD07:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 457
    invoke-static {v0, v6, v5}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    float-to-int v0, v0

    .line 462
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v3}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$500(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    invoke-direct {p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->relayoutMessageView()V

    .line 464
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mHasCheckBox:Z

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 467
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 468
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->TD05:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 467
    invoke-static {v0, v6, v5}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    float-to-int v0, v0

    .line 472
    iget-object v1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 473
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$4;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 487
    :goto_3
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mTheme:I

    invoke-direct {v1, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v3}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$400(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v4, Lcolor/support/v7/appcompat/R$string;->color_allow_text:I

    .line 489
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v4, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$6;

    invoke-direct {v4, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$6;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    .line 488
    invoke-virtual {v1, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v4, Lcolor/support/v7/appcompat/R$string;->color_reject_text:I

    .line 499
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    new-instance v4, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;

    invoke-direct {v4, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;-><init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V

    .line 498
    invoke-virtual {v1, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 508
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 487
    invoke-static {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$102(Lcom/color/support/widget/ColorSecurityAlertDialog;Lcolor/support/v7/app/AlertDialog;)Lcolor/support/v7/app/AlertDialog;

    .line 510
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    return-object p0
.end method

.method public getSecurityAlertDialog()Landroid/app/Dialog;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {p0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$100(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setCheckBoxString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(I)V

    return-object p0
.end method

.method public setCheckBoxString(Ljava/lang/String;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setChecked(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsChecked:Z

    return-object p0
.end method

.method public setCustomBackgroundColor(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 203
    iput p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public setHasCheckBox(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mHasCheckBox:Z

    return-object p0
.end method

.method public setMessage(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeString(Ljava/lang/String;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    return-object p0
.end method

.method public setOnLinkTextClickListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$802(Lcom/color/support/widget/ColorSecurityAlertDialog;Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;

    return-object p0
.end method

.method public setOnSelectedListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$302(Lcom/color/support/widget/ColorSecurityAlertDialog;Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

    return-object p0
.end method

.method public setPositiveString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveString(Ljava/lang/String;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    return-object p0
.end method

.method public setShowStatementText(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mIsShowStatementText:Z

    return-object p0
.end method

.method public setStatementLinkString(II)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 3

    const/4 v0, -0x1

    if-gtz p1, :cond_0

    .line 327
    iput v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mStatementId:I

    goto :goto_1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iput p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mStatementId:I

    goto :goto_1

    .line 331
    :cond_2
    :goto_0
    iput v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mStatementId:I

    .line 336
    :goto_1
    iput p2, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mLinkId:I

    return-object p0
.end method

.method public setTitle(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
