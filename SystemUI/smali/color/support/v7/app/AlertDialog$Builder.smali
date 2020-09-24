.class public Lcolor/support/v7/app/AlertDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcolor/support/v7/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 347
    invoke-static {p1, v0}, Lcolor/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 360
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 361
    new-instance v0, Lcolor/support/v7/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 362
    invoke-static {p1, p2}, Lcolor/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    .line 363
    iput p2, p0, Lcolor/support/v7/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public create()Lcolor/support/v7/app/AlertDialog;
    .locals 3

    .line 1062
    new-instance v0, Lcolor/support/v7/app/AlertDialog;

    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcolor/support/v7/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1063
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v2, v0, Lcolor/support/v7/app/AlertDialog;->mAlert:Lcolor/support/v7/app/AlertController;

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertController$AlertParams;->apply(Lcolor/support/v7/app/AlertController;)V

    .line 1064
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1065
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1066
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1068
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1069
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1070
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1071
    iget-object p0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object p0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 376
    iget-object p0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object p0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 725
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 726
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 608
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 743
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 744
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 745
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 418
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mDialogType:I

    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setIcon(I)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 452
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 467
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIconAttribute(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setIconAttribute(I)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 483
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 484
    iget-object v1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 485
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public bridge synthetic setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setItems(IILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2

    .line 708
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 709
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v0, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 710
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p3, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 663
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 664
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 677
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 678
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 692
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 693
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 694
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 429
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 440
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageNeedScroll(Z)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mMessageNeedScroll:Z

    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3, p4}, Lcolor/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 768
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 769
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p3, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 770
    iput-object p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p2, 0x1

    .line 771
    iput-boolean p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 820
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 821
    iput-object p4, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 822
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 823
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 824
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 793
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 794
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 795
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 796
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 534
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 535
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 547
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 548
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 559
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 571
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 572
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 584
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 585
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 596
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 628
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public bridge synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 639
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 926
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 650
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 497
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 498
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 510
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 511
    iput-object p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 522
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic setRecycleOnMeasureEnabled(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setRecycleOnMeasureEnabled(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3, p4}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 844
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 845
    iget-object p1, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p3, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 846
    iput p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p2, 0x1

    .line 847
    iput-boolean p2, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 868
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 869
    iput-object p4, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 870
    iput p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 871
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 872
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 911
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 912
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 913
    iput p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 914
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 890
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 891
    iput-object p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 892
    iput p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 893
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 386
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 397
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setView(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;IIII)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual/range {p0 .. p5}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setView(I)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 2

    .line 939
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 940
    iput p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 941
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1

    .line 960
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 961
    iput p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 962
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 992
    iget-object v0, p0, Lcolor/support/v7/app/AlertDialog$Builder;->P:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 993
    iput p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 994
    iput-boolean p1, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 995
    iput p2, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 996
    iput p3, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 997
    iput p4, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 998
    iput p5, v0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public bridge synthetic show()Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public show()Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 1089
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    .line 1090
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-object p0
.end method
