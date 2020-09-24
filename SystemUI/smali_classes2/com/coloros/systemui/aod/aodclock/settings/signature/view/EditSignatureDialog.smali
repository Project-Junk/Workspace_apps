.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
.super Ljava/lang/Object;
.source "EditSignatureDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;
    }
.end annotation


# static fields
.field private static final MAX_INPUT:I = 0x32


# instance fields
.field private mAlertDialog:Lcolor/support/v7/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mHintMessage:Ljava/lang/String;

.field private mInputText:Ljava/lang/String;

.field private mKeyboardContext:Landroid/content/Context;

.field private mLimitView:Landroid/widget/TextView;

.field private mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$qe5pYHDEhy2EVlx32XpAaaFjV74;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$qe5pYHDEhy2EVlx32XpAaaFjV74;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mKeyboardContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mLimitView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mInputText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$create$3(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 149
    sget-object p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-virtual {p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->getTextLength(Ljava/lang/CharSequence;)I

    move-result p2

    .line 150
    sget-object p3, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-virtual {p3, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->getTextLength(Ljava/lang/CharSequence;)I

    move-result p3

    sub-int/2addr p5, p4

    sub-int/2addr p2, p5

    rsub-int/lit8 p2, p2, 0x32

    const-string p4, ""

    if-gtz p2, :cond_0

    return-object p4

    :cond_0
    if-lt p2, p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    add-int/2addr p2, p1

    add-int/lit8 p3, p2, -0x1

    .line 158
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    if-ne p2, p1, :cond_2

    return-object p4

    .line 164
    :cond_2
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public create()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    .line 114
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d00b9

    .line 116
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05a1

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0a0233

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0642

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mLimitView:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 124
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 125
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 132
    :cond_1
    sget-object v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 133
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mLimitView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 136
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mHintMessage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 140
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const v1, 0x7f0a0144

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$TRQync73CyXkRlMG7YR3xS50HQQ;

    invoke-direct {v3, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$TRQync73CyXkRlMG7YR3xS50HQQ;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01b3

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$1XVeR_y0YrClk6rdbFXxRlu5qXY;

    invoke-direct {v3, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$1XVeR_y0YrClk6rdbFXxRlu5qXY;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    sget-object v4, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$_4jIPLKkQTxwp3p7FIYiGDBKsNE;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$EditSignatureDialog$_4jIPLKkQTxwp3p7FIYiGDBKsNE;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 168
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$1;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    .line 192
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getInputText()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mInputText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$create$1$EditSignatureDialog(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;->onclick(Z)V

    return-void
.end method

.method public synthetic lambda$create$2$EditSignatureDialog(Landroid/view/View;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;->onclick(Z)V

    return-void
.end method

.method public setEditSignatureDialogListener(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;

    return-void
.end method

.method public setHint(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mHintMessage:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mHintMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setHint(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    move-result-object p0

    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mHintMessage:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mHintMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setText(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setText(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
    .locals 1

    .line 80
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mInputText:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-object p0
.end method

.method public setTitle(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitle:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setTitle(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;
    .locals 1

    .line 102
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitle:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->mAlertDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method
