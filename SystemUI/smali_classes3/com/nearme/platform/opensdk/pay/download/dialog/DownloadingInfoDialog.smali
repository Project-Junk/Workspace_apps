.class public Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;
.super Ljava/lang/Object;
.source "DownloadingInfoDialog.java"


# instance fields
.field private mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mLeftBtn:Landroid/widget/Button;

.field private mPercentTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRightBtn:Landroid/widget/Button;

.field private mStateTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    .line 50
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0x50

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 55
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v2, -0x1

    .line 56
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    .line 57
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 68
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, -0xa0a0b

    .line 70
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 72
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41900000    # 18.0f

    .line 74
    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 75
    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v8, 0x420c0000    # 35.0f

    .line 76
    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    .line 78
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x9

    .line 79
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    const v10, -0xc9c9ca

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v9, v1, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    .line 83
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 84
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    const v12, -0x3e3e3f

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v4, Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 92
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 93
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "mOnlyIndeterminate"

    invoke-static {v4, v6, v5}, Lcom/nearme/platform/opensdk/pay/download/util/BeanUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v12}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 95
    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xbd364a

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 96
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x42180000    # 38.0f

    .line 98
    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 99
    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 100
    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v5, 0x40e00000    # 7.0f

    .line 101
    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 102
    iget-object v6, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v8, -0x242425

    .line 106
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41000000    # 8.0f

    .line 111
    invoke-static {p1, v6}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p1, v6}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v3, v8, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 112
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x424c0000    # 51.0f

    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41b80000    # 23.0f

    .line 113
    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 114
    invoke-static {p1, v8}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 115
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    .line 116
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v9, v1, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 119
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 120
    iget-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setGravity(I)V

    .line 121
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    .line 122
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    invoke-static {p1, v5}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 125
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v5, v1, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 126
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    const v5, -0x50506

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 127
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setGravity(I)V

    .line 128
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {v4, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {v4, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 134
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    invoke-static {p1, v7}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getPx(Landroid/content/Context;F)I

    move-result v2

    const v4, -0x343435

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v2, 0x42700000    # 60.0f

    .line 136
    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 137
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-static {v4, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v5, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;

    invoke-direct {v5, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v4, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$2;

    invoke-direct {v4, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v4, -0x9f4e0b

    .line 160
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 161
    invoke-static {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/resource/ResourceHelper;->getDp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 162
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;->setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v2, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;

    invoke-direct {v2, p0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;

    invoke-direct {v1, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;-><init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 186
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 187
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    return-void
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mLeftBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .locals 1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setRightBtnText(Ljava/lang/String;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mRightBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStateTextColor(I)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
