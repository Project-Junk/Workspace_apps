.class public Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;
.super Ljava/lang/Object;
.source "DownloadHintDialog.java"


# instance fields
.field private mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mHintTextView:Landroid/widget/TextView;

.field private mLeftBtn:Landroid/widget/Button;

.field private mRightBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    .line 52
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0x50

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 57
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v2, -0x1

    .line 58
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    .line 59
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, -0xa0a0b

    .line 65
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 67
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    .line 68
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    const v6, -0xc9c9ca

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 71
    invoke-static {p1, v4}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 72
    invoke-static {p1, v4}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 73
    invoke-static {p1, v4}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v4, 0x41c00000    # 24.0f

    .line 74
    invoke-static {p1, v4}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 75
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v8, -0x242425

    .line 79
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 84
    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v3, v8, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 85
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x424c0000    # 51.0f

    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41b80000    # 23.0f

    .line 86
    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 87
    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 88
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    .line 89
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 91
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v9, v1, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 92
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    iget-object v6, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 94
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    .line 95
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v11, 0x40e00000    # 7.0f

    .line 97
    invoke-static {p1, v11}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 98
    iget-object v11, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v11, v1, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 99
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    const v10, -0x50506

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 101
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v4, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v4, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 107
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 108
    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v2

    const v4, -0x343435

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v2, 0x42700000    # 60.0f

    .line 109
    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 110
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-static {v4, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v5, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$1;

    invoke-direct {v5, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v4, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;

    invoke-direct {v4, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v4, -0x9f4e0b

    .line 133
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 134
    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 135
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$3;

    invoke-direct {v2, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$4;

    invoke-direct {v1, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$4;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 159
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    return-object p0
.end method


# virtual methods
.method public dimiss()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightBtnText(Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSystemAlertFlag()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
