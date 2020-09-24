.class public Lcom/color/support/widget/ColorSecurityAlertDialog;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;,
        Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;,
        Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;
    }
.end annotation


# static fields
.field private static final REGION_MARK:Ljava/lang/String; = "ro.oppo.regionmark"

.field private static final TAG:Ljava/lang/String; = "ColorSecurityAlertDialog"


# instance fields
.field private mAlertDialog:Lcolor/support/v7/app/AlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLayout:Landroid/view/View;

.field private mMsgTextView:Landroid/widget/TextView;

.field private mOnLinkTextClickListener:Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;

.field private mOnSelectedListener:Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

.field private mStatementTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorSecurityAlertDialog;Lcolor/support/v7/app/AlertDialog;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mOnSelectedListener:Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/color/support/widget/ColorSecurityAlertDialog;Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mOnSelectedListener:Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mMsgTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mMsgTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mStatementTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mStatementTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorSecurityAlertDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$702(Lcom/color/support/widget/ColorSecurityAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mOnLinkTextClickListener:Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/color/support/widget/ColorSecurityAlertDialog;Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mOnLinkTextClickListener:Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public show()V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
