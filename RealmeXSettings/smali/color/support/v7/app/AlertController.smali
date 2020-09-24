.class public Lcolor/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/app/AlertController$CheckedItemAdapter;,
        Lcolor/support/v7/app/AlertController$AlertParams;,
        Lcolor/support/v7/app/AlertController$RecycleListView;,
        Lcolor/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field protected mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private mDialogType:I

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field mMessage:Ljava/lang/CharSequence;

.field mMessageNeedScroll:Z

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/widget/ScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 99
    iput v0, p0, Lcolor/support/v7/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcolor/support/v7/app/AlertController;->mCheckedItem:I

    .line 120
    iput v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 122
    iput v0, p0, Lcolor/support/v7/app/AlertController;->mDialogType:I

    .line 128
    iput-boolean v0, p0, Lcolor/support/v7/app/AlertController;->mMessageNeedScroll:Z

    .line 131
    new-instance v1, Lcolor/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/AlertController$1;-><init>(Lcolor/support/v7/app/AlertController;)V

    iput-object v1, p0, Lcolor/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcolor/support/v7/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 198
    iput-object p3, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 199
    new-instance p3, Lcolor/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lcolor/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcolor/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 201
    sget-object p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog:[I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorAlertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 205
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 207
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mListLayout:I

    .line 208
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 209
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_singleChoiceItemLayout:I

    .line 210
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 211
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mListItemLayout:I

    .line 212
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcolor/support/v7/app/AlertController;->mShowTitle:Z

    .line 213
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSupportAlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/AlertController;->mButtonIconDimen:I

    .line 215
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 226
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 230
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 231
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 234
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 235
    invoke-static {v3}, Lcolor/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2

    .line 879
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 880
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 881
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 882
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 800
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 799
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 804
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 803
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_1

    .line 492
    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 493
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 496
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 501
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 502
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 503
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 508
    :cond_2
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    .line 509
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 512
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 2

    .line 609
    iget-object p2, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget p4, Lcolor/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {p2, p4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 610
    iget-object p4, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcolor/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 617
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p4, :cond_8

    .line 620
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_2

    .line 625
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p2, v0

    :cond_2
    if-eqz p4, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 629
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p4, v0

    :cond_3
    if-nez p2, :cond_4

    if-eqz p4, :cond_8

    .line 637
    :cond_4
    iget-object p3, p0, Lcolor/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    .line 639
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    new-instance p3, Lcolor/support/v7/app/AlertController$2;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/AlertController$2;-><init>(Lcolor/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 649
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    new-instance p3, Lcolor/support/v7/app/AlertController$3;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/AlertController$3;-><init>(Lcolor/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 655
    :cond_5
    iget-object p3, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p3, :cond_6

    .line 657
    new-instance p1, Lcolor/support/v7/app/AlertController$4;

    invoke-direct {p1, p0, p2, p4}, Lcolor/support/v7/app/AlertController$4;-><init>(Lcolor/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 669
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Lcolor/support/v7/app/AlertController$5;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/AlertController$5;-><init>(Lcolor/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 678
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p4, :cond_8

    .line 681
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 690
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    iget v0, p0, Lcolor/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 694
    iget v2, p0, Lcolor/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 700
    invoke-static {v0}, Lcolor/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 701
    :cond_3
    iget-object v2, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_7

    .line 706
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 707
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-boolean v0, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_5

    .line 710
    iget v0, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 714
    :cond_5
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 715
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_6
    return-void

    :cond_7
    const/16 v0, 0x8

    .line 718
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 3

    .line 182
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcolor/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 184
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 459
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 461
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 463
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1
.end method

.method public getDialogType()I
    .locals 1

    .line 891
    iget v0, p0, Lcolor/support/v7/app/AlertController;->mDialogType:I

    return v0
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    .line 439
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 440
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 441
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 450
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 249
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 471
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 476
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected selectContentView()I
    .locals 3

    .line 253
    iget v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 254
    iget v0, p0, Lcolor/support/v7/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 256
    :cond_0
    iget v1, p0, Lcolor/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 259
    :cond_1
    iget v0, p0, Lcolor/support/v7/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 364
    iget-object p4, p0, Lcolor/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 370
    iput-object p2, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 371
    iput-object p4, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 372
    iput-object p5, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    return-void

    .line 388
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :cond_2
    iput-object p2, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 377
    iput-object p4, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 378
    iput-object p5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    return-void

    .line 382
    :cond_3
    iput-object p2, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 383
    iput-object p4, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 384
    iput-object p5, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcolor/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setDialogType(I)V
    .locals 0

    .line 901
    iput p1, p0, Lcolor/support/v7/app/AlertController;->mDialogType:I

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcolor/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 400
    iput p1, p0, Lcolor/support/v7/app/AlertController;->mIconId:I

    .line 402
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 404
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v0, p0, Lcolor/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 407
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 418
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 419
    iput v0, p0, Lcolor/support/v7/app/AlertController;->mIconId:I

    .line 421
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 426
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 287
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 288
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 269
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcolor/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 300
    iput p1, p0, Lcolor/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lcolor/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 312
    iput-boolean p1, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 332
    iput p1, p0, Lcolor/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 334
    iput p2, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 335
    iput p3, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 336
    iput p4, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 337
    iput p5, p0, Lcolor/support/v7/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    .line 813
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 814
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 821
    iget v5, p0, Lcolor/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 822
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 824
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_0
    const v5, 0x102001a

    .line 828
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 829
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 832
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 834
    :cond_2
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 836
    iget v6, p0, Lcolor/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 837
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 839
    :cond_3
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    const v5, 0x102001b

    .line 843
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 844
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    .line 847
    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 849
    :cond_4
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 851
    iget v6, p0, Lcolor/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 852
    iget-object v5, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 854
    :cond_5
    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 858
    :goto_2
    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcolor/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v1, :cond_6

    .line 864
    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcolor/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 866
    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcolor/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 868
    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcolor/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v4

    :goto_4
    if-nez v1, :cond_a

    .line 874
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 769
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 770
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 771
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 774
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcolor/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 775
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 782
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcolor/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 785
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 786
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 787
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 788
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 789
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 792
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    .line 723
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 728
    iget-object v2, p0, Lcolor/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcolor/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 732
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 736
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 737
    iget-boolean v0, p0, Lcolor/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_3

    .line 739
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcolor/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcolor/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 740
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget p1, p0, Lcolor/support/v7/app/AlertController;->mIconId:I

    if-eqz p1, :cond_1

    .line 746
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 747
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 748
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 752
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 753
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 754
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 755
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 752
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 756
    iget-object p1, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 760
    :cond_3
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected setupView()V
    .locals 9

    .line 516
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 517
    sget v1, Lcolor/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 518
    sget v2, Lcolor/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 519
    sget v3, Lcolor/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 523
    sget v4, Lcolor/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 524
    invoke-direct {p0, v0}, Lcolor/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 526
    sget v4, Lcolor/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 527
    sget v5, Lcolor/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 528
    sget v6, Lcolor/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 531
    invoke-direct {p0, v4, v1}, Lcolor/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 532
    invoke-direct {p0, v5, v2}, Lcolor/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 533
    invoke-direct {p0, v6, v3}, Lcolor/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 535
    invoke-virtual {p0, v2}, Lcolor/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 536
    invoke-virtual {p0, v3}, Lcolor/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 537
    invoke-virtual {p0, v1}, Lcolor/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz v3, :cond_2

    .line 544
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 549
    sget v4, Lcolor/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 551
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v7, :cond_7

    .line 558
    iget-object v4, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    .line 559
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    :cond_4
    const/4 v4, 0x0

    .line 564
    iget-object v8, p0, Lcolor/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_6

    .line 565
    :cond_5
    sget v4, Lcolor/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_8

    .line 569
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 573
    sget v1, Lcolor/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 575
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_8
    :goto_3
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v4, v1, Lcolor/support/v7/app/AlertController$RecycleListView;

    if-eqz v4, :cond_9

    .line 581
    check-cast v1, Lcolor/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v1, v7, v3}, Lcolor/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_9
    if-nez v0, :cond_c

    .line 586
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    :goto_4
    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    const/4 v6, 0x2

    :cond_b
    or-int v1, v7, v6

    const/4 v3, 0x3

    .line 590
    invoke-direct {p0, v2, v0, v1, v3}, Lcolor/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 595
    :cond_c
    iget-object v0, p0, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    .line 596
    iget-object v1, p0, Lcolor/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    .line 597
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 598
    iget v1, p0, Lcolor/support/v7/app/AlertController;->mCheckedItem:I

    if-ltz v1, :cond_d

    .line 600
    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 601
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_d
    return-void
.end method
