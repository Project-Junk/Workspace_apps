.class public Lcom/oppo/support/util/OppoDialogUtil;
.super Ljava/lang/Object;
.source "OppoDialogUtil.java"


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1

.field public static final BIT_FOUSED_BUTTON_NEGATIVE:I = 0x10

.field public static final BIT_FOUSED_BUTTON_NEUTRAL:I = 0x20

.field public static final BIT_FOUSED_BUTTON_POSITIVE:I = 0x8

.field public static final BIT_FOUSED_DEFAULT:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoDialogUtil"

.field private static sDeleteDialogOption:I


# instance fields
.field private mAlertDialogPadding:I

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFousedFlag:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextFousedColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mFousedFlag:I

    .line 95
    iput-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initialize(Landroid/view/Window;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$color;->oppo_dialog_button_text_color_center:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mTextColor:Landroid/content/res/ColorStateList;

    .line 214
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_button_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mAlertDialogPadding:I

    .line 217
    sget p1, Lcom/oppo/support/util/OppoDialogUtil;->sDeleteDialogOption:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 218
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_delete_alert_dialog_button_focused_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mTextFousedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$color;->oppo_dialog_button_text_color_center:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mTextFousedColor:Landroid/content/res/ColorStateList;

    :goto_0
    return-void
.end method

.method private setButtonBackground(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    sget v0, Lcom/oppo/support/util/OppoDialogUtil;->sDeleteDialogOption:I

    if-nez v0, :cond_1

    .line 142
    iget v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mAlertDialogPadding:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 143
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 144
    iget-object p0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 124
    :pswitch_1
    sget p1, Lcom/oppo/support/util/OppoDialogUtil;->sDeleteDialogOption:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mTextFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    sget v0, Lcom/oppo/support/util/OppoDialogUtil;->sDeleteDialogOption:I

    if-nez v0, :cond_1

    .line 130
    iget v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mAlertDialogPadding:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 131
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 132
    iget-object p0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object p1, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    sget v0, Lcom/oppo/support/util/OppoDialogUtil;->sDeleteDialogOption:I

    if-nez v0, :cond_1

    .line 115
    iget v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mAlertDialogPadding:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 116
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 117
    iget-object p0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static setDeleteDialogOption(I)V
    .locals 0

    .line 104
    sput p0, Lcom/oppo/support/util/OppoDialogUtil;->sDeleteDialogOption:I

    return-void
.end method


# virtual methods
.method public setDialogButtonFlag(Landroid/view/Window;)V
    .locals 1

    const v0, 0x1020019

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    const v0, 0x102001a

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    const v0, 0x102001b

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/oppo/support/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;I)V

    return-void
.end method

.method public setDialogButtonFlag(Landroid/view/Window;I)V
    .locals 1

    const v0, 0x1020019

    .line 244
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    const v0, 0x102001a

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    const v0, 0x102001b

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/support/util/OppoDialogUtil;->initialize(Landroid/view/Window;)V

    const/4 p1, 0x0

    .line 260
    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x2

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/oppo/support/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x4

    .line 270
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/support/util/OppoDialogUtil;->setButtonBackground(I)V

    if-nez p2, :cond_4

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setDialogDrag(Lcolor/support/v7/app/AlertController;Landroid/view/Window;)V
    .locals 0

    .line 284
    invoke-virtual {p0, p2}, Lcom/oppo/support/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;)V

    return-void
.end method
