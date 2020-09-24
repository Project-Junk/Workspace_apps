.class public Lcom/color/support/preference/ColorInputPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "ColorInputPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/preference/ColorInputPreference$SavedState;,
        Lcom/color/support/preference/ColorInputPreference$ContentWatcher;
    }
.end annotation


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final TIME_DELAY:I = 0x64


# instance fields
.field private mContent:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mEditText:Lcom/color/support/widget/ColorEditText;

.field private mEllipsisMode:Z

.field private mEnableEllipsize:Z

.field private mHasFocus:Z

.field private mHasTitle:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mPreferenceView:Landroid/view/View;

.field private mWatcher:Lcom/color/support/preference/ColorInputPreference$ContentWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 87
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorInputPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mContext:Landroid/content/Context;

    .line 115
    new-instance p4, Lcom/color/support/widget/ColorEditText;

    invoke-direct {p4, p1, p2}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    .line 116
    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const v0, 0x1020009

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setId(I)V

    .line 117
    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/color/support/widget/ColorEditText;->setBackgroundResource(I)V

    .line 118
    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p4}, Lcom/color/support/widget/ColorEditText;->forceFinishDetach()V

    .line 119
    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Lcom/color/support/widget/ColorEditText;->setSingleLine(Z)V

    .line 120
    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->color_input_edit_text_padding_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 120
    invoke-virtual {p4, v0, v0, v2, v0}, Lcom/color/support/widget/ColorEditText;->setPaddingRelative(IIII)V

    .line 123
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->ColorInputPreference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 125
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorInputPreference_colorContent:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    .line 126
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorInputPreference_colorHint:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorInputPreference;->mHint:Ljava/lang/CharSequence;

    .line 127
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorInputPreference_colorEllipsize:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/color/support/preference/ColorInputPreference;->mEnableEllipsize:Z

    .line 128
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 130
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->TextView_android_selectAllOnFocus:I

    invoke-virtual {p4, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 132
    iget-object p4, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v3, Lcom/color/support/preference/ColorInputPreference$1;

    invoke-direct {v3, p0}, Lcom/color/support/preference/ColorInputPreference$1;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p4, v3, v4, v5}, Lcom/color/support/widget/ColorEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 143
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->Preference_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 144
    :cond_1
    iput-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->mHasTitle:Z

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    iget-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->mHasTitle:Z

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const p2, 0x800015

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setGravity(I)V

    .line 149
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcolor/support/v4/view/ColorViewCompat;->setTextAlignment(Landroid/view/View;I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const p2, 0x800013

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorEditText;->setGravity(I)V

    .line 152
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcolor/support/v4/view/ColorViewCompat;->setTextAlignment(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/preference/ColorInputPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/preference/ColorInputPreference;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/color/support/preference/ColorInputPreference;->mEnableEllipsize:Z

    return p0
.end method

.method static synthetic access$300(Lcom/color/support/preference/ColorInputPreference;C)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->isEmojiCharacter(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/preference/ColorInputPreference;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/color/support/preference/ColorInputPreference;->mEllipsisMode:Z

    return p0
.end method

.method static synthetic access$402(Lcom/color/support/preference/ColorInputPreference;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEllipsisMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/color/support/preference/ColorInputPreference;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->mHasFocus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$ContentWatcher;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mWatcher:Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    return-object p0
.end method

.method static synthetic access$602(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$ContentWatcher;)Lcom/color/support/preference/ColorInputPreference$ContentWatcher;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mWatcher:Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    return-object p1
.end method

.method static synthetic access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$802(Lcom/color/support/preference/ColorInputPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Lcom/color/support/preference/ColorInputPreference;ZZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorInputPreference;->updateDeleteButton(ZZ)V

    return-void
.end method

.method private isEmojiCharacter(C)Z
    .locals 0

    if-eqz p1, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0xd

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-lt p1, p0, :cond_0

    const p0, 0xd7ff

    if-le p1, p0, :cond_3

    :cond_0
    const p0, 0xe000

    if-lt p1, p0, :cond_1

    const p0, 0xfffd

    if-le p1, p0, :cond_3

    :cond_1
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_2

    const p0, 0x10ffff

    if-le p1, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateDeleteButton(ZZ)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-boolean v1, p0, Lcom/color/support/preference/ColorInputPreference;->mHasTitle:Z

    if-eqz v1, :cond_1

    const/16 p0, 0x8

    .line 427
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 p0, 0x0

    .line 431
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEnableEllipsize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEditText()Lcom/color/support/widget/ColorEditText;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPreferenceView()Landroid/view/View;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mPreferenceView:Landroid/view/View;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 251
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 252
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mPreferenceView:Landroid/view/View;

    .line 254
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mPreferenceView:Landroid/view/View;

    sget v0, Lcolor/support/v7/appcompat/R$id;->edittext_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const v0, 0x1020009

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 257
    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 263
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mPreferenceView:Landroid/view/View;

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    .line 268
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 271
    invoke-static {p1, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 272
    iget-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->mHasTitle:Z

    if-eqz p1, :cond_3

    .line 273
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mPreferenceView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 277
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    .line 278
    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, v0, p1}, Lcom/color/support/widget/ColorEditText;->setTextSize(IF)V

    .line 279
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mDeleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/color/support/preference/ColorInputPreference$2;

    invoke-direct {v1, p0}, Lcom/color/support/preference/ColorInputPreference$2;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :goto_0
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p1, :cond_4

    .line 292
    iput-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEnableEllipsize:Z

    .line 295
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->getContent()Ljava/lang/CharSequence;

    move-result-object p1

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/color/support/preference/ColorInputPreference$3;

    invoke-direct {v1, p0, p1}, Lcom/color/support/preference/ColorInputPreference$3;-><init>(Lcom/color/support/preference/ColorInputPreference;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->post(Ljava/lang/Runnable;)Z

    .line 323
    :cond_5
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 325
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 327
    :cond_6
    iget-boolean p1, p0, Lcom/color/support/preference/ColorInputPreference;->mHasFocus:Z

    if-eqz p1, :cond_7

    .line 328
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    goto :goto_1

    .line 330
    :cond_7
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 332
    :goto_1
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 334
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v0, Lcom/color/support/preference/ColorInputPreference$4;

    invoke-direct {v0, p0}, Lcom/color/support/preference/ColorInputPreference$4;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/color/support/preference/ColorInputPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    check-cast p1, Lcom/color/support/preference/ColorInputPreference$SavedState;

    .line 460
    invoke-virtual {p1}, Lcom/color/support/preference/ColorInputPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/color/support/preference/ColorPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 461
    iget-object p1, p1, Lcom/color/support/preference/ColorInputPreference$SavedState;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->setContent(Ljava/lang/CharSequence;)V

    return-void

    .line 455
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 439
    invoke-super {p0}, Lcom/color/support/preference/ColorPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 444
    :cond_0
    new-instance v1, Lcom/color/support/preference/ColorInputPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/preference/ColorInputPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 445
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    .line 446
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/color/support/preference/ColorInputPreference$SavedState;->mText:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    .line 241
    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEnableEllipsize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mEditText:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->notifyChanged()V

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->shouldDisableDependents()Z

    move-result v0

    .line 183
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 185
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->persistString(Ljava/lang/String;)Z

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->shouldDisableDependents()Z

    move-result p1

    if-eq p1, v0, :cond_3

    .line 189
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorInputPreference;->notifyDependencyChange(Z)V

    :cond_3
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mHint:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mHint:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference;->mHint:Ljava/lang/CharSequence;

    .line 209
    invoke-virtual {p0}, Lcom/color/support/preference/ColorInputPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/color/support/preference/ColorPreference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_0

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
