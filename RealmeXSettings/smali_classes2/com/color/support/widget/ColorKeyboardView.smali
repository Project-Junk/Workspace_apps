.class public Lcom/color/support/widget/ColorKeyboardView;
.super Landroid/widget/LinearLayout;
.source "ColorKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;,
        Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorKeyBoardView"


# instance fields
.field private mAccessClose:Ljava/lang/String;

.field private mAccessDetail:Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDefaultType:I

.field private mDetailButton:Landroid/widget/ImageView;

.field private mHelper:Lcom/color/support/widget/help/KeyboardHelper;

.field private mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

.field private mOnClickButtonListener:Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;

.field private mOnClickSwitchListener:Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;

.field private mSecureType:Z

.field private mTitleName:Ljava/lang/String;

.field private mTitleNameTextView:Landroid/widget/TextView;

.field private mTopView:Landroid/widget/RelativeLayout;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mDefaultType:I

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/color/support/widget/ColorKeyboardView;->mOnClickButtonListener:Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;

    .line 55
    iput-object v1, p0, Lcom/color/support/widget/ColorKeyboardView;->mOnClickSwitchListener:Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;

    .line 92
    iput-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mContext:Landroid/content/Context;

    .line 93
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorKeyboardView:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorKeyBoardView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 94
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorKeyboardView_colorKeyboardViewType:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mSecureType:Z

    .line 95
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorKeyboardView_colorWidthOffset:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mWidthOffset:I

    .line 96
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorKeyboardView_colorTitleName:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mTitleName:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget-boolean v2, p0, Lcom/color/support/widget/ColorKeyboardView;->mSecureType:Z

    if-eqz v2, :cond_0

    sget v2, Lcolor/support/v7/appcompat/R$layout;->color_security_keybord_view:I

    goto :goto_0

    :cond_0
    sget v2, Lcolor/support/v7/appcompat/R$layout;->color_unlock_keybord_view:I

    :goto_0
    invoke-virtual {p3, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_keyboard_view_close:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    .line 101
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_keyboard_view_detail:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    .line 102
    sget p3, Lcolor/support/v7/appcompat/R$id;->keyboardview:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    .line 103
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_keyboard_view_top:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mTopView:Landroid/widget/RelativeLayout;

    .line 104
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_keyboard_view_text:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mTitleNameTextView:Landroid/widget/TextView;

    .line 106
    iget-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mTopView:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/color/support/widget/ColorKeyboardView;->mSecureType:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    iget-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p3, v1}, Lcom/color/support/widget/SecurityKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 111
    iget-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mTitleNameTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mTitleName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboard_view_access_close_button:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorKeyboardView;->mAccessClose:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$string;->color_keyboard_view_access_detail_button:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mAccessDetail:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 117
    new-instance p3, Lcom/color/support/widget/ColorKeyboardView$1;

    invoke-direct {p3, p0}, Lcom/color/support/widget/ColorKeyboardView$1;-><init>(Lcom/color/support/widget/ColorKeyboardView;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 130
    new-instance p3, Lcom/color/support/widget/ColorKeyboardView$2;

    invoke-direct {p3, p0}, Lcom/color/support/widget/ColorKeyboardView$2;-><init>(Lcom/color/support/widget/ColorKeyboardView;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 142
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorKeyboardView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/color/support/widget/ColorKeyboardView;->mAccessClose:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorKeyboardView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/color/support/widget/ColorKeyboardView;->mAccessDetail:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public adjustSizeChange(I)V
    .locals 5

    .line 249
    invoke-virtual {p0}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyboard()Lcom/color/support/widget/SecurityKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyboard()Lcom/color/support/widget/SecurityKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboard;->getMinWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 252
    div-int/lit8 p1, p1, 0x2

    .line 253
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorKeyboardView;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v2}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Lcom/color/support/widget/SecurityKeyboardView;->setPadding(IIII)V

    .line 254
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorKeyboardView;->mWidthOffset:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/color/support/widget/ColorKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 255
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/color/support/widget/ColorKeyboardView;->mWidthOffset:I

    add-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 256
    iget-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p1}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    :cond_0
    return-void
.end method

.method public getKeyboardHelper()Lcom/color/support/widget/help/KeyboardHelper;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mHelper:Lcom/color/support/widget/help/KeyboardHelper;

    return-object v0
.end method

.method public getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mTopView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_keyboard_view_close:I

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/color/support/widget/ColorKeyboardView;->mOnClickButtonListener:Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;->onClickButton()V

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcolor/support/v7/appcompat/R$id;->color_keyboard_view_detail:I

    if-ne p1, v0, :cond_1

    .line 168
    iget-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mOnClickSwitchListener:Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;

    if-eqz p1, :cond_1

    .line 169
    invoke-interface {p1}, Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;->onClickSwitch()V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorKeyboardView;->adjustSizeChange(I)V

    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setKeyBoardType(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mDefaultType:I

    return-void
.end method

.method public setKeyboardHelper(Lcom/color/support/widget/help/KeyboardHelper;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mHelper:Lcom/color/support/widget/help/KeyboardHelper;

    return-void
.end method

.method public setOnClickButtonListener(Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mOnClickButtonListener:Lcom/color/support/widget/ColorKeyboardView$OnClickButtonListener;

    return-void
.end method

.method public setOnClickSwitchListener(Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/color/support/widget/ColorKeyboardView;->mOnClickSwitchListener:Lcom/color/support/widget/ColorKeyboardView$OnClickSwitchListener;

    return-void
.end method
